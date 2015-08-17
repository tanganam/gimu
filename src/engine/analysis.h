//
// executors implementation.
// Author:yeyouqun@163.com
// 2009-11-29
//
#include <engine/filter.h>
#ifndef __GM_MAIN_EXEC_H__
#define __GM_MAIN_EXEC_H__

struct GmCollector;

template <typename NodeType>
inline void GetFileTimesAndAttributes (NodeType * pNode, const wxString & szFullName)
{
	wxFileName FileName (szFullName);
#ifdef _WIN32
	pNode->Attribute = GetFileAttributes (szFullName.c_str ());
#else
	pNode->Attribute = 0;
#endif //
	wxDateTime AccessTime, ModifyTime, CreationTime;
	FileName.GetTimes (&AccessTime, &ModifyTime, &CreationTime);
	pNode->AccessTime = AccessTime.GetValue ().GetValue ();
	pNode->ModifyTime = ModifyTime.GetValue ().GetValue ();
	pNode->CreateTime = CreationTime.GetValue ().GetValue ();
	return;
}

inline bool GetDirectoryNode (GmUifDirEntry & Node, const wxString & szFullName, const wxString & Name)
{
	if (!wxDir ().Open (szFullName))
		return false;

	Node.DirName = ToStlString (Name);
	GetFileTimesAndAttributes (&Node, szFullName + wxT("/"));
	return true;
}

inline bool GetFileNode (GmLeafEntry & Node, const wxString & szFullName, const wxString & Name)
{
	if (!wxFile::Access (szFullName, wxFile::read))
		return false;

	wxFileName FileName (szFullName);
	Node.FileSize = FileName.GetSize ().GetValue ();
	GetFileTimesAndAttributes (&Node, szFullName);
	Node.LeafName = ToStlString (Name);
	return true;
}


enum FileDirFlags {
	FDF_FILE,
	FDF_DIR,
};

/**
 * �����ļ����������ļ����в�����
 *
 * @param DirName			��Ҫ������Ŀ¼�����ļ���ȫ��
 * @param pTree				���������������ͣ�����Ϊ�գ�������Ҫ���ɷ�������
 * @param pFilter			�ļ���Ŀ¼������������Ϊ�ա�
 * @param method			����Ŀ¼�ķ�����ֻ���� TraversalMtd ���͡�
 * @throw					No Throw;
 */
void ENGINE_EXPORT TraverseTheDirForAnylasis (const wxString & DirName
									 , GmUifSourcePairT * pTree
									 , GmFiltersCollector * pFilter // ������
									 , GmMonitor * m_pMonitor = 0
									 , const TraversalMtd method = TM_DEPTH_FIRST);
/**
 * �����ļ����������ļ����в���������������� pCollector �н��в�����
 *
 * @param tree				����������������
 * @param collector			�ļ���Ŀ¼�ռ�����ͬʱ������󼰾��档
 * @param method			����Ŀ¼�ķ�����ֻ���� TraversalMtd ���͡�
 * @throw					No Throw, ִ����ɵĽ�㶼�� Flags ������� NODE_COLLECTED_FLAG
 *							������ӵ���¼�ļ�ʱ�����������Ҫ�����
 */
void ENGINE_EXPORT TraverseTheDirForCollector (GmUifSourcePairT & tree
									 , GmCollector & collector
									 , const TraversalMtd method = TM_DEPTH_FIRST);
void ENGINE_EXPORT TraverseTheDirForCollector (GmUifSourceVectorT & tree
									 , GmCollector & collector
									 , const TraversalMtd method = TM_DEPTH_FIRST);

/**
 * ɾ��û����ɵ��ļ���Ŀ¼��㣬���ָ�����ԭ�еı�־���ã�Ӧ����
	 void ENGINE_EXPORT TraverseTheDirForCollector (GmUifSourcePairT & tree
										 , GmCollector & collector
										 , const TraversalMtd method = TM_DEPTH_FIRST);
   �ӿ�һ��ʹ�á�
 *
 * @param tree				����������������
 */
void RemoveNodeNotFinished (GmUifSourcePairT & tree);
void RemoveNodeNotFinished (GmUifSourceVectorT & trees);

/**
 * ���ݷ����������������з���������ʱ���б䶯������ӵĽ�㡣
 *
 * @param OriTree			�����ļ�ϵͳĿ¼����������������
 * @param RefTree			����������������ʱ������ɵĲο�����
 * @throw					No Throw;
 */
void AnalysisLatestTree (GmUifSourceVectorT & OriTree, const GmUifSourceVectorT & RefTree);

#endif //