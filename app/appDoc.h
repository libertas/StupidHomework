// appDoc.h : interface of the CAppDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_APPDOC_H__16E26346_0011_477E_A585_D3FDBF1367D6__INCLUDED_)
#define AFX_APPDOC_H__16E26346_0011_477E_A585_D3FDBF1367D6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CAppDoc : public CDocument
{
protected: // create from serialization only
	CAppDoc();
	DECLARE_DYNCREATE(CAppDoc)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAppDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CAppDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CAppDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_APPDOC_H__16E26346_0011_477E_A585_D3FDBF1367D6__INCLUDED_)
