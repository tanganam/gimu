//
// exec unit of job
// Author:yeyouqun@163.com
// 2009-11-12
//
#include <gmpre.h>
class GmJobItem;
struct GmMonitor;
struct GmStoreEntry;
struct GmReportItem;
struct GmLogItem;

#ifndef __GM_EXEC_UINT_H__
#define __GM_EXEC_UINT_H__
class GmWriter;
class GmReader;

class ENGINE_EXPORT GmHandleDataThread : public wxThread
{
private:
	//
	// �洢���ݵ��ܽ�㣬����Ľӿڶ���洢�����йء��洢���ݵ�����ӿڣ���Ҫ�����߳�ʵ�֡�
	//
	void StoreDataTo ();
	virtual void DoHandleData (GmUifSourceVectorT & vps, GmUnitedIndexFile * uif) = 0;
	virtual void DoHandleDataTrees (const GmUifSourceVectorT & now, const GmUifSourceVectorT & former) {}
	virtual void MergeDataToOne (GmUnitedIndexFile & uif) = 0;

	//
	// ����Ľӿ���ȡ�������йء�ȡ��������洢���ݵ�����ڣ��������ڽ�ִ�в�����з��࣬��ͬ�Ķ��ڻ���ʵ�֣�
	// ����ͬ����ͨ�����⺯���ӿڵ������������Ӧ�ӿڡ�ȡ�����ݵ�����ӿڣ���Ҫ�����߳�ʵ�֡��� Vistor ģʽʵ�֡�
	//
	void GetDataBack ();
	//
	// virtual�������ͨ�ú���������һЩ�������⡣
	//
	virtual void * Entry();
	//
	// ���ӿ��ṩ�������������ء�
	//
	//
	// ����һ������
	//
	void AddReport (ubyte8 time);
	void AddLog (ubyte8 time, const wxString & message);
	void EndJob ();
	virtual void DoEndJob () {}
protected:
	GmHandleDataThread (const GmJobItem * pJob, GmMonitor * pMonitor);
	GmHandleDataThread (const vector<GmStoreEntry*> & vpStoreNodes
						, const wxString & szDestPath
						, int Option
						, const GmJobItem * pJob
						, GmMonitor * pMonitor);
	virtual ~GmHandleDataThread () {}
	void MergeTree (GmUifRootPairT & ResultRootPair, GmUnitedIndexFile & uif);
	void AddTreeToUif (const wxDateTime & now, GmUifSourceVectorT & vps, GmUnitedIndexFile & uif);
private:
	//
	// data members.
	//
	friend void ENGINE_EXPORT GetReportsOfJob (const wxString &, const wxString &, vector<GmReportItem*> &);
	friend void ENGINE_EXPORT GetLogsOfJob (const wxString &, const wxString &, vector<GmLogItem*> &);
	//
	// ��ֹ���ִ���߳�ͬʱ������־�ļ����߱����ļ���
	//
	static ACE_Process_Mutex	m_mutex;
protected:
	const GmJobItem *			m_pJob;
	GmMonitor *					m_pMonitor;

	// Get Data Back Members.
	const vector<GmStoreEntry*>	m_vpStoreNodes;
	auto_ptr<GmReader>			m_reader;
	auto_ptr<GmWriter>			m_writer;
	const wxString				m_szDestPath;
	const int					m_Options;
	const bool					m_bGetDataBack;
	DECL_NO_COPYASSIGN_CONSTRUCTOR (GmHandleDataThread)
public:
	GmWriter * GetDataBackWriter (const GmStoreEntry * pEntry, const GmUifSourceEntry * entry);
	GmWriter * GetJobWriter (const GmJobItem * pItem);
	GmReader * GetJobReader (GmUnitedIndexFile * pUifFile
							, GmUifRootEntry * pUifRoot
							, const GmUifSourceEntry * entry);
	GmMonitor * GetMonitor () const { return m_pMonitor; }
public:
	virtual void GetDirDataBack (GmUifDirectory * pDir, const wxString & path, const GmStoreEntry * pEntry) = 0;
	virtual void GetFileDataBack (GmSnapNode * pFile, const wxString & path, const GmStoreEntry * pEntry) = 0;
	//
	// ֻ��� Zip ���͵��ļ�
	//
	virtual void GetZipDirectoryDataBack (const GmZipDirectory * pDir, const GmStoreEntry * pEntry) { assert (false); }
	virtual void GetZipFileDataBack (GmCDSEntry * pFile, const GmStoreEntry * pEntry) { assert (false); }
};

class ENGINE_EXPORT GmHandleZipThread : public GmHandleDataThread
{
public:
	GmHandleZipThread (const GmJobItem * pJob, GmMonitor * pMonitor);
	GmHandleZipThread (const vector<GmStoreEntry*> & vpStoreNodes
						, const wxString & szDestPath
						, int Option
						, const GmJobItem * pJob
						, GmMonitor * pMonitor);
	~GmHandleZipThread () {}
private:
	virtual void DoHandleData (GmUifSourceVectorT & vps, GmUnitedIndexFile * uif);
	virtual void MergeDataToOne (GmUnitedIndexFile & uif);
	void RestoreToOneZipFile (GmUnitedIndexFile & uif
							, const GmUifRootPairT & ResultRootPair
							, const wxDateTime & now);
	// GetDataBack
	virtual void GetDirDataBack (GmUifDirectory * pDir, const wxString & path, const GmStoreEntry * pEntry);
	virtual void GetFileDataBack (GmSnapNode * pFile, const wxString & path, const GmStoreEntry * pEntry);
	virtual void GetZipDirectoryDataBack (const GmZipDirectory * pDir, const GmStoreEntry * pEntry);
	virtual void GetZipFileDataBack (GmCDSEntry * pFile, const GmStoreEntry * pEntry);
	DECL_NO_COPYASSIGN_CONSTRUCTOR (GmHandleZipThread)
};

class ENGINE_EXPORT GmHandle7ZThread : public GmHandleDataThread
{
public:
	GmHandle7ZThread (const GmJobItem * pJob, GmMonitor * pMonitor);
	GmHandle7ZThread (const vector<GmStoreEntry*> & vpStoreNodes
						, const wxString & szDestPath
						, int Option
						, const GmJobItem * pJob
						, GmMonitor * pMonitor);
	~GmHandle7ZThread () {}
private:
	virtual void DoHandleData (GmUifSourceVectorT & vps, GmUnitedIndexFile * uif);
	virtual void MergeDataToOne (GmUnitedIndexFile & uif);
	virtual void GetDirDataBack (GmUifDirectory * pDir, const wxString & path, const GmStoreEntry * pEntry);
	virtual void GetFileDataBack (GmSnapNode * pFile, const wxString & path, const GmStoreEntry * pEntry);
	DECL_NO_COPYASSIGN_CONSTRUCTOR (GmHandle7ZThread)
};


class ENGINE_EXPORT GmHandleDupThread : public GmHandleDataThread
{
public:
	GmHandleDupThread (const GmJobItem * pJob, GmMonitor * pMonitor);
	GmHandleDupThread (const vector<GmStoreEntry*> & vpStoreNodes
						, const wxString & szDestPath
						, int Option
						, const GmJobItem * pJob
						, GmMonitor * pMonitor);
	~GmHandleDupThread () {}
private:
	virtual void MergeDataToOne (GmUnitedIndexFile & uif);
	virtual void DoHandleData (GmUifSourceVectorT & vps, GmUnitedIndexFile * uif);
	virtual void GetDirDataBack (GmUifDirectory * pDir, const wxString & path, const GmStoreEntry * pEntry);
	virtual void GetFileDataBack (GmSnapNode * pFile, const wxString & path, const GmStoreEntry * pEntry);
private:
	// ֻ���ڸ������͵���ҵ�С�
	wxString GetJobDest (GmUnitedIndexFile * puif, const GmUifRootEntry & entry);
	DECL_NO_COPYASSIGN_CONSTRUCTOR (GmHandleDupThread)
};

class ENGINE_EXPORT GmHandleSyncThread : public GmHandleDupThread
{
public:
	GmHandleSyncThread (const GmJobItem * pJob, GmMonitor * pMonitor);
	GmHandleSyncThread (const vector<GmStoreEntry*> & vpStoreNodes
						, const wxString & szDestPath
						, int Option
						, const GmJobItem * pJob
						, GmMonitor * pMonitor);
	~GmHandleSyncThread () {}
private:
	virtual void DoHandleData (GmUifSourceVectorT & vps, GmUnitedIndexFile * uif);
	virtual void DoHandleDataTrees (const GmUifSourceVectorT & now, const GmUifSourceVectorT & former);
	virtual void MergeDataToOne (GmUnitedIndexFile & uif);
	DECL_NO_COPYASSIGN_CONSTRUCTOR (GmHandleSyncThread)
};

struct GmFilter;
struct GmJobFilter;

GmFilter * GetFilter (const vector<GmJobFilter*> & vpFilters);
//
// �ϲ������µ�����
//
#endif //__GM_EXEC_UINT_H__
