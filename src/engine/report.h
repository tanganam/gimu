//
//
// Gimu report definition, use uif as its implementation.
// Authour:yeyouqun@163.com
// 2009-12-12
//
//
#include <gmpre.h>
#include <engine/uifapp.h>

#ifndef __GM_REPORT_H__
#define __GM_REPORT_H__

struct GmReportItem
{
	wxString		JobName;
	wxString		JobDest;
	GmDirectoryInfo	Info;
	ubyte8			ReportTime;
	char			JobType; //STORE_DATA_TO or GET_DATA_BACK
private:
	friend struct GmGetReportHandler;
	friend class GmReport;
	void ToBuffer (GmMemoryOutStream &) const;
	void FromBuffer (GmMemoryInStream &);
};

class ENGINE_EXPORT GmReport : public GmUifApp
{
public:
	//
	// �����ļ�����
	//
	GmReport (const wxString & ReportName);
	//
	// ��ӱ���Ĵ洢����Դ��
	//
	void AddNewReport (ubyte8 Time);
	void AddReportItem (const GmReportItem &);
	//
	// ȡ�����б�����
	//
	void GetAllReport (vector<GmReportItem*> & Reports);
	//
	// �����ɺ�һ����Ҫ��������ӿڣ����򽫿��ܳ��ִ���
	//
	void EndAddReport ();
	wxString GetReportName () { return GetAppName (); }
	~GmReport ();
};

//
// @Job		�����������������Ϊ�գ���ȡ�����еı���
// @report	��Ӧ�ı��������ļ���
// @rpts	��Ӧ��������б������ݡ�
//
void ENGINE_EXPORT GetReportsOfJob (const wxString & Job, const wxString & report, vector<GmReportItem*> & rpts);
//
// @Job		�����������������Ϊ�գ���������еı���
// @report	��Ӧ�ı��������ļ���
// @xml		txt �ļ���
//
void ENGINE_EXPORT ExportReportsToTXT (const wxString & Job, const wxString & report, const wxString & txt);

//
// ȡ�ñ�����ִ���ʾ
// @report �������
//
//
wxString ENGINE_EXPORT GetReportString (const GmReportItem & report);

#endif //__GM_REPORT_H__
