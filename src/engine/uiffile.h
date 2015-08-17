//
// Definition for united index file format
// auther:yeyouqun@163.com
// 2009-11-8
//
//
#include <engine/gmiostream.h>


#ifndef __GIMU_UNITED_INDEX_FILE_H__
#define __GIMU_UNITED_INDEX_FILE_H__

class ENGINE_EXPORT GmUnitedIndexFile
{
public:
	//
	// ����һ��ͳһ�����ļ�
	// @param szIndexFile	�ļ����������ò�ͬ����չ���������������չ����Ӧ����ء�
	// @param pMonitor		����ͳһ�����ļ�ʱ�ļ�������
	// @excepton			�������쳣��
	//
	GmUnitedIndexFile (const wxString & szIndexFile, GmMonitor * pMonitor);
	
	//
	// ȡ��ĳ�������ļ������и�������ڡ�
	//
	const vector<GmUifRootEntry*> & GetAllRootEntries ();

	//
	// �½�һ���µĸ����
	// @param Type					UIF �����ͣ��û�ָ��
	// @param EntryDataType			�������ͣ��û�ָ��
	//
	//
	void CreateRootEntry (GmRootEntryType Type, ubyte2 EntryDataType, ubyte2 TraverseMtd, ubyte8 Time);

	//
	// ����һ����������ݵ����
	// @param ExtendData			�û�����չ���ݡ�
	//
	//
	//
	void EndRootEntry (const vector<char> & ExtendData = vector<char> ());

	//
	// ���һ��UIF����Դ
	// @param Name				UIF ����Դ������
	// @param Type				UIF����Դ�����ͣ���·��������ȫ�ļ�����
	// @param ExtendData		�û���չ���ݡ�
	//
	void AddUifSource (const wxString & Name
						, GmSourceType Type
						, const vector<char> & ExtendData = vector<char> ());

	//
	// ���UIF��Ҷ�ӽ��
	// @param NodeInfo			Ҷ�ӽ��������Ϣ
	// @param ExtendData		Ҷ�ӽ�����չ����
	//
	void AddUifLeaf (const GmLeafInfo & NodeInfo, ubyte4 Flags = 0, const vector<char> & ExtendData = vector<char> ());

	//
	// ���UIF��Ŀ¼���
	// @param NodeInfo			Ŀ¼���������Ϣ��ֻȡ�����Ϣ
	// @param ExtendData		Ŀ¼������չ����
	//
	void AddUifDir (const GmLeafInfo & NodeInfo, ubyte4 Flags = 0, const vector<char> & ExtendData = vector<char> ());

	//
	// ����UIF��Ŀ¼��㣬�������һ��Dir���������ô˽ӿڣ������������޷���ȷд�뼰��ȡ
	//
	void EndUifDir ();
	
	//
	//  ������ݼ������û�����ݼ�������Ҫ���á�
	//
	void AddDataSet (GmDataSetEntry * pDataSet);

	//
	// ����UIF�ļ�
	//
	void Tidy ();

	//
	// ɾ��ĳ������㼰���������ݣ��ر�ĵģ��ڵ��ã�1�Σ�����������Σ����ӿں󣬺������õĽӿ�
	// ֻ�� Tidy () ���������е������Ѿ��ǲ�һ�µ��ˡ�
	//
	int RemoveUifRootEntry (size_t nIndex, vector<GmDataSetEntry*> & vpDataSet);

	//
	// ȡ��������������Ϣ��Uif����Դ��Uif���ݼ�������չ���ݡ�
	//
	void GetAllUifSource (const GmUifRootEntry & Entry, vector<GmUifSourceEntry*> & vpSources);
	void GetAllUifDataSet (const GmUifRootEntry & Entry, vector<GmDataSetEntry*> & vpDataSet);
	void GetAllUifExtendData (const GmUifRootEntry & Entry, vector<char> & vcExtendData);
	//
	// ȡ������
	//
	const wxString & GetIndexFileName () const { return m_szIndexFile; }

	//
	// ȡ��Uif���������
	//
	void GetUifRootTree (const GmUifRootEntry & Entry, GmUifRootPairT & tree);
	//
	// ��������
	//
	void Close ();
	void ClearUif ();
	~GmUnitedIndexFile ();
private:
	void CreateFirstTable (GmOutputStream & Writer);
	ubyte8 CreateNewTableAndChangeTableChain (ACE_Message_Block &, ubyte8 OldPos, GmOutputStream &);
	ubyte4 ReadTables (vector<pair<ubyte8, ACE_Message_Block *> > &);
	bool ReadUifRootEntryVector (vector<pair<ubyte8, ACE_Message_Block *> > * pTables);
	void OpenOrCreateUif ();
	void AddUifRootToTable (const GmUifRootEntry & Entry);
	void CreateEmptyTable (ACE_Message_Block & Block);
	void GetUifRootTable (ACE_Message_Block & Block, const GmUIFTableEntry & Entry, vector<GmUifRootEntry*> & Entries);
	void WriteTableToFile (GmOutputStream & Writer, ubyte4 pos, const ACE_Message_Block & Block);

	//
	//  ��ȡ�����ݵĽӿڡ�
	//
	template <int Value>
	void ReadTree (const GmUifRootEntry &
					, std::vector<GmUifSourcePairT*> &
					, vector<GmUifSourceEntry*> &
					, Int2Type<Value>);
	template <int Value>
	void ReadTree (size_t &
				, vector<ubyte4> &
				, GmUifDirectory *
				, const GmUifRootEntry & Entry
				, Int2Type<Value>);

	friend void HandleTheNextDirectory (GmUnitedIndexFile * pThis
								   , size_t & index
								   , vector<ubyte4> & blocks
								   , vector<GmUifDirectory*> & UNUSED (DirsNeedRead)
								   , GmUifDirectory* pNextDirectory
								   , const GmUifRootEntry & Entry
								   , Int2Type <TM_DEPTH_FIRST> i2t);

	friend void HandleTheseNextDirs (GmUnitedIndexFile * pThis
							   , vector<GmUifDirectory*> & DirsNeedRead
							   , size_t & index
							   , vector<ubyte4> &blocks
							   , const GmUifRootEntry & Entry
							   , Int2Type <TM_WIDTH_FIRST> i2t);
	void Finalize (); // must call at last or EndRootEntry ();
private:
	// data members.
	wxString				m_szIndexFile;
	GmMonitor				* m_pMonitor;
	ACE_Message_Block		m_DataBlock;
	vector<GmUifRootEntry*> m_pRootEntries;

	struct GmUifStatus
	{
		GmUifStatus () : pCurRootEntry (0)
		{
			LastTable.first = 0;
			LastTable.second = 0;
		}
		~GmUifStatus ()
		{
			Clear ();
		}

		void Clear ()
		{
			if (pCurRootEntry != 0)
				delete pCurRootEntry;
			pCurRootEntry = 0;

			if (Reader.IsOpened ())
				Reader.Close ();

			if (Writer.IsOpened ())
				Writer.Close ();

			for_each (vpSources.begin (), vpSources.end (), ReleaseMemory ());
			vpSources.clear ();
			for_each (vpDataSets.begin (), vpDataSets.end (), ReleaseMemory ());
			vpDataSets.clear ();

			if (LastTable.second != 0)
				delete LastTable.second;

			LastTable.second = 0;
			LastTable.first = 0;
		}

		GmInputStream						Reader;
		GmOutputStream						Writer;
		pair<ubyte8, ACE_Message_Block *>	LastTable;
		GmUifRootEntry *					pCurRootEntry;
		vector<GmUifSourceEntry*>			vpSources;
		vector<GmDataSetEntry*>				vpDataSets;
	}m_GmUifStatus;
};


void ENGINE_EXPORT AddTheseTreeToUifFile (GmUifSourceVectorT & trees
										, GmUnitedIndexFile & uif
										, GmRootEntryType Type
										, ubyte2 EntryDataType
										, ubyte2 TraverseMtd
										, ubyte8 Time
										, vector<GmDataSetEntry*> & vpDataSets = vector<GmDataSetEntry*> ()
										, vector<char> & ExtendData = vector<char> ());

//
// �������ӿڣ������ǴӺ���ǰ���������󱸷ݵ�������Ϊ��ߵĲ�������֮ǰ���ݵ�����Ϊ��ߵĲ�����
// �����Ҫ�Զ��ʱ�����з���������Ҫ��֮ǰ���ɵ�����Ϊ��������������һ��ʱ������Ϊ�Ҳ������������
// ��������һ������ʱ��ı�������ͨ�����ʱ���������Խ��б���ʱ�ķ��������ڷ���ʱ�����в�����ֻ���ڴ��н��У�
// �����漰�����̵Ķ�д��������������ַ�����ʽ��������ִ�в����Ϻõ����ܡ�����Ϊ�ڲ���ϵͳ��ǰ��ʱ��������Ҫ��ȡ
// ��������ȡ�ļ�ϵͳ���ļ���ʱ������ݡ�
//
inline const string & GetNodeName (GmSnapNode * pNode)
{
	return pNode->pLeafNode->LeafName;
}

inline const string & GetNodeName (GmUifDirectory* pNode)
{
	return pNode->pMySelf->DirName;
}

inline const string & GetNodeName (GmUifSourcePairT * pNode)
{
	return pNode->first->SourceName;
}

void MergeToLatestTree (GmUifSourceVectorT &, GmUifSourceVectorT &);
//
// �������ӿڣ��ϲ�����ÿ��ʱ��������ʱ��������������Լ���ȡ����ĳ��ʱ������ȡ�õ�һ�µ��ļ����ݣ������Ϊ Snap ����
// ����ִ�з���ʱ���������ʱ��㿪ʼ������Ȼ�������������ʱ�����з�����������ʱ���ķ�����ǰһ������
// ʱ������Ϊ�Ҳ��������Լ���Ϊ��������������������ʱ���ͬʱ�ο���һ���ļ���㣬���������ָ�뽫�ڶ��
// ʱ����г��֣���ˣ������ɵ�ʱ������ͷ��ڴ�ʱ��ֻ�ͷ��ڷ���ʱ�����ɵ�Ŀ¼����ļ�����Ҫ��ᡣ����
// ����Դ����Ӧ���õ�ʱ���������й���
//
void CopyToLatestTree (GmUifSourceVectorT &, const GmUifSourceVectorT &);
void CopyToLatestTree (GmUifRootPairT & left, const GmUifRootPairT & right);

inline ubyte4 GetNodeSize (GmSnapNode * pNode)
{
	return pNode->pLeafNode->FileSize;
}

inline ubyte4 GetNodeCompressSize (GmSnapNode * pNode)
{
	return pNode->pLeafNode->CompressSize;
}

void GetDirectoryInfo (const GmUifDirectory * pDirNode, GmDirectoryInfo & infos);
void GetUifRootTreeDirectoryInfo (const GmUifSourceVectorT & trees, GmDirectoryInfo & infos);

GmDirectoryInfo GetUifRootTreeDirectoryInfo (const GmUifRootPairT &);

void ClearEmptyUifTreeDirectory (vector<GmUifDirectory*> & vpSubDirs);
void ClearEmtpySourceTree (GmUifSourceVectorT & tree);
void ClearEmptyRootTreePair (GmUifRootPairT & RootTree);

GmUifRootEntry* FromTimeToRootEntry (const vector<GmUifRootEntry*> & roots, ubyte8 time);
void GetAllSetName (GmUnitedIndexFile & uif, vector<wxString> & vszSetName);
#endif //__GIMU_UNITED_INDEX_FILE_H__