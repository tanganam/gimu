//
// App definition.
// Author:yeyouqun@163.com
// 2009-11-15
//

#ifndef __GM_APP_H__
#define __GM_APP_H__

class GmAppFrame;
class wxBitmap;
enum GmLangID;

class GimuApp : public wxApp
{
public:
	GimuApp ();

	~GimuApp ()
	{
	}

	void SetLanguage (GmLangID langid);
protected: // overriden methods
	/**
	 * ��ʼ��Ӧ�ó���
	 */
    virtual bool OnInit (void);
	bool OnCmdLineError (wxCmdLineParser &parser);
	void OnInitCmdLine (wxCmdLineParser& parser);
    
    /**
     * �˳�Ӧ�ó��򣬲�����Ӧ�ó�����ռ�õ���Դ��
     */
	virtual int OnExit (void);

	enum {
		ECS_MENU_ABOUT = 1000,
		ECS_MENU_HELP,
	};
private:
	DECLARE_EVENT_TABLE()
	wxLocale					m_Locale;
	auto_ptr<GmFileLocker>		m_Locker;
}; // End of class abRestoreApp

DECLARE_APP (GimuApp);

#endif //__GM_APP_H__