//
// collector's base class.
// Author:yeyouqun@163.com
// 2010-4-14
//
#ifndef __GM_COLLECTOR_H__
#define __GM_COLLECTOR_H__

struct GmMonitor;
struct GmUifSourceEntry;
struct GmUifDirectory;
struct GmSnapNode;

struct ENGINE_EXPORT GmCollector
{
	GmCollector (GmMonitor * pMonitor, bool bNeedTellSize = false);
	virtual ~GmCollector () = 0;
	//
	// �����������Դ����·������ֹ���ֶ������ԴͬĿ¼ͬ�ļ��Ĵ���������Ҫ�úô���
	//
	virtual void OnSource (const GmUifSourceEntry & entry) = 0;
	/**
	 * �ռ�Ŀ¼����Ϣ
	 * @param FullName				�ļ���ȫ·��
	 * @param szRelaPath			�����ļ�ʱ��ʹ�õ����·�����������ļ�����
	 * @return						���ؿա�
	 */
	virtual bool OnDir (const wxString & FullName, const wxString & szRelaPath, const GmUifDirectory * pDir) = 0;
	/**
	 * �ռ��ļ�����Ϣ
	 * @param path					�ļ���ȫ·��
	 * @param szRelaPath			�����ļ�ʱ��ʹ�õ����·�����������ļ�����
	 * @return						���ؿա�
	 */
	virtual bool OnFile (const wxString & FullName, const wxString & szRelaPath, const GmSnapNode * pLeafNode) = 0;
	/**
	 * �ռ���Ϣ�Ĺ������У������˴���
	 * @param Message				������Ϣ��
	 * @return						���ؿա�
	 */
	void OnError (const wxString & Message);
	/**
	 * �ռ���Ϣ�Ĺ������У������˾��档
	 * @param Warn					������Ϣ��
	 * @return						���ؿա�
	 */
	void OnWarn (const wxString & Warn);
	/**
	 * �ռ���Ϣ�Ĺ������У������˾��档
	 * @param message				��Ϣ�ִ���
	 * @return						���ؿա�
	 */
	void OnMessage (const wxString & message);
protected:
	/**
	 * open the szFileName file and handle the data by HanldeThisBlock;
	 */
	void HandleFile (const wxString & szFileName);
	bool NeedTellSize () const { return m_bTellSize; }
private:
	virtual void HanldeThisBlock (const char * pData, ubyte4 Bytes, bool bEndFile) = 0;
	GmMonitor * m_pMonitor;
	ACE_Message_Block m_block;
	bool		m_bTellSize;// �Ƿ��ڴ����ļ�ʱ���ϱ��������ݿ�ĳ��ȣ��� ZIP ����ʱ���� Copy ���� Sync ʱ����
							// �� Writer ��Ҳ�ϱ���һ�Σ����»���������ʡ�
};

//
// ����ӿ�������Դ����·��Ϊ���������� CRC32 У���룬���Դ�У����ΪĿ¼���������������Դ
// �µ��ļ����÷������ڸ������͵���ҵ�С�
//
wxString GetCrc32String (const char *pData, unsigned length);

#endif //__GM_COLLECTOR_H__