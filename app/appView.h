// appView.h : interface of the CAppView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_APPVIEW_H__73EA75B8_C5B6_49F3_9D01_185F804E6422__INCLUDED_)
#define AFX_APPVIEW_H__73EA75B8_C5B6_49F3_9D01_185F804E6422__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CAppView : public CView
{
protected: // create from serialization only
	CAppView();
	DECLARE_DYNCREATE(CAppView)

// Attributes
public:
	CAppDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAppView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CAppView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CAppView)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in appView.cpp
inline CAppDoc* CAppView::GetDocument()
   { return (CAppDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_APPVIEW_H__73EA75B8_C5B6_49F3_9D01_185F804E6422__INCLUDED_)
