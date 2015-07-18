// app.h : main header file for the APP application
//

#if !defined(AFX_APP_H__F7FD3F9D_178C_4D5A_9E47_91D3AD644868__INCLUDED_)
#define AFX_APP_H__F7FD3F9D_178C_4D5A_9E47_91D3AD644868__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CAppApp:
// See app.cpp for the implementation of this class
//

class CAppApp : public CWinApp
{
public:
	CAppApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAppApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CAppApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_APP_H__F7FD3F9D_178C_4D5A_9E47_91D3AD644868__INCLUDED_)
