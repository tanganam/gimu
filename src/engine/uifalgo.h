//
// Uif algo header
// Author:yeyouqun@163.com
// 2009-11-8
//

#ifndef __GM_UIF_ALGO_H__
#define __GM_UIF_ALGO_H__

struct GmSnapNode
{
	GmSnapNode () : Time (0)
					, pLeafNode (0)
	{
	}
	ubyte8					Time;
	GmLeafEntry *			pLeafNode;
	~GmSnapNode () { if (pLeafNode) delete pLeafNode; }
};

struct GmUifDirectory
{
	GmUifDirectory () : pMySelf (0), bOnlyClearDir (false) {}
	virtual ~GmUifDirectory ()
	{
		for_each (vpSubDirs.begin (), vpSubDirs.end (), ReleaseMemory ());
		if (!bOnlyClearDir) {
			//
			// ��ֻ���Ŀ¼������£�Ŀ¼�� pMySelf ���������Ķ�����˲���Ҫɾ����
			//
			if (pMySelf != 0) delete pMySelf;
			for_each (vpSubFiles.begin (), vpSubFiles.end (), ReleaseMemory ());
		}
	}
	void AddLeafEntry (GmLeafEntry * pNode, ubyte8 EntryTime)
	{
		GmSnapNode * pLeafNode = new GmSnapNode;
		pLeafNode->Time = EntryTime;
		pLeafNode->pLeafNode = pNode;
		vpSubFiles.push_back (pLeafNode);
	}
	void AddDirNode (GmUifDirectory * pNode)
	{
		vpSubDirs.push_back (pNode);
	}

	GmUifDirEntry *					pMySelf;
	vector<GmUifDirectory *>		vpSubDirs;
	vector<GmSnapNode *>			vpSubFiles;
	bool							bOnlyClearDir;
};

typedef std::pair<GmUifSourceEntry*, GmUifDirectory*>		GmUifSourcePairT;
typedef std::vector<GmUifSourcePairT*>						GmUifSourceVectorT;
typedef std::pair<GmUifRootEntry *, GmUifSourceVectorT*>	GmUifRootPairT;

void ENGINE_EXPORT ClearUifSourceTree (GmUifSourcePairT * pSourceTree);
void ENGINE_EXPORT ClearUifTree (GmUifSourceVectorT * pUifTree);
void ENGINE_EXPORT ClearRootTree (GmUifRootPairT * pTree);

struct GmAutoClearSourceVectorTree
{
	GmUifSourceVectorT & tree;
	GmAutoClearSourceVectorTree (GmUifSourceVectorT & tree) : tree (tree) {}
	~GmAutoClearSourceVectorTree ()
	{
		ClearUifTree (&tree);
	}
};


struct GmAutoClearRootPairTree
{
	GmUifRootPairT & tree;
	GmAutoClearRootPairTree (GmUifRootPairT & tree) : tree (tree) {}
	~GmAutoClearRootPairTree ()
	{
		ClearRootTree (&tree);
	}
};

struct GmNodeHandler
{
	virtual bool HandleNode (GmUifDirectory *, const string & = string ()) { return true; }
	virtual bool HandleNode (GmSnapNode *, const string & = string ()) { return true; }
	virtual ~GmNodeHandler () {}
};

struct GmCommHandleFileType {};

//
//  ���е��ﻯ TraverseType ���Ͷ�ʹ�����ʵ�֣������Ͽ������κ����ͣ���Ϊ�˷�ֹ
//  ����������Ҫ�İ汾�����Ӵ��������������ʹ��Ԥ����ļ������ͣ������ػ��汾������
//  ��ֱ��ʵ����Ӧ�İ汾���ɡ�
//

inline void TraverseFileNode (vector<GmSnapNode*> & vpSubFiles
					   , GmNodeHandler * pHandler
					   , const string & path
					   , GmCommHandleFileType chft)
{
	for (size_t index = 0; index < vpSubFiles.size (); ++index) {
		if (pHandler != 0)
			pHandler->HandleNode (vpSubFiles[index], path);
	}
}

template <typename HandleFileT>
void TraverseTree (GmUifDirectory * pNode, GmNodeHandler * pHandler, const string & path, HandleFileT hft)
{
	if (pHandler != 0 && !(pHandler->HandleNode (pNode, path))) return;

	vector<GmUifDirectory*> & vpSubDirs = pNode->vpSubDirs;
	for (size_t index = 0; index < vpSubDirs.size (); ++index) {
		string NextPath;
		if (vpSubDirs[index]->pMySelf != 0) NextPath = AssemblePath (path, vpSubDirs[index]->pMySelf->DirName);
		else NextPath = path;
		TraverseTree (vpSubDirs[index], pHandler, NextPath, hft);
	}

	TraverseFileNode (pNode->vpSubFiles, pHandler, path, hft);
}

#endif //__GM_UIF_ALGO_H__