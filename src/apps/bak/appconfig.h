//
// app xml config file, 
// Author:yeyouqun@163.com
// 2010-5-16
// Format:
// <entry>value</entry>
// <serial_no>xxxxxx</serial_no>
// <language>xxxxxx</language>
// ....
//

#ifndef __GM_APP_CONFIG_H__
#define __GM_APP_CONFIG_H__

enum GmLangID
{
	LANGUAGE_SIMPLIFIED_CHINESE,
	LANGUAGE_TRADITIONAL_CHINESE,
	LANGUAGE_ENGLISH,
};

class GmAppConfig
{
	wxString		m_szCfgFile;
	wxXmlDocument	m_ConfigDoc;
	wxXmlNode *		m_pRoot;
	void Save ();
	wxXmlNode * AddOrSetXmlNode (wxXmlNode & parent, const wxString & content, const wxString & type);
	~GmAppConfig ();
#ifdef ENTERPRISE_EDITION
	wxString GetHardwareUser ();
#endif
	void SetBoolValue (bool, const wxString &);
	bool GetBoolValue (const wxString &);
public:
	//
	// ��ϵͳ�����ļ���
	//
	void OpenConfig (const wxString & file);
	wxString GetConfigFile () { return m_szCfgFile; }
	//
	// ȡ��ʹ�ù���Ŀ��Ŀ¼
	//
	bool AddUsedDirectory (const wxString & dir);
	void GetUsedDirectory (wxArrayString & dirs);

	//
	// Ĭ���ļ����͡�
	//
	wxString GetDefaultType ();
	void SetDefaultType (const wxString & type);

	//
	// ����ѡ�
	//
	GmLangID GetLangID ();
	void SetLangID (GmLangID id);
	//
	// ȡ��Ӧ�ó�������к�
	//
	void SetSerialNo (const wxString & serial);
	bool CheckSerialNo ();
	bool CheckSerialNo (const wxString &);

	//
	// ��������ȡ��ģʽ��
	//
	void SetSnapMode (bool);
	bool GetSnapMode ();
	//
	// ��С����������
	//
	void SetMinimizeToTaskBar (bool);
	bool GetMinimizeToTaskBar ();

	//
	// ��ϵͳһ���𶯡�
	//
	void SetStartWithSystem (bool);
	bool GetStartWithSystem ();
	//
	// ��־�����޶
	//
	int GetLogReportLimit ();
	void SetLogReportLimit (int value);
	SINGLETON_DECL(GmAppConfig);
};

#endif //__GM_APP_CONFIG_H__