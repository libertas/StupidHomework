// calcDlg.cpp : implementation file
//

#include "stdafx.h"
#include "calc.h"
#include "calcDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCalcDlg dialog

CCalcDlg::CCalcDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CCalcDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCalcDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CCalcDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCalcDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CCalcDlg, CDialog)
	//{{AFX_MSG_MAP(CCalcDlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BUTTON7, OnButton7)
	ON_BN_CLICKED(IDC_BUTTON8, OnButton8)
	ON_BN_CLICKED(IDC_BUTTON9, OnButton9)
	ON_BN_CLICKED(IDC_BUTTON4, OnButton4)
	ON_BN_CLICKED(IDC_BUTTON5, OnButton5)
	ON_BN_CLICKED(IDC_BUTTON6, OnButton6)
	ON_BN_CLICKED(IDC_BUTTON1, OnButton1)
	ON_BN_CLICKED(IDC_BUTTON2, OnButton2)
	ON_BN_CLICKED(IDC_BUTTON3, OnButton3)
	ON_BN_CLICKED(IDC_BUTTON14, OnButton14)
	ON_BN_CLICKED(IDC_BUTTON10, OnButton10)
	ON_BN_CLICKED(IDC_BUTTON15, OnButton15)
	ON_BN_CLICKED(IDC_BUTTON11, OnButton11)
	ON_BN_CLICKED(IDC_BUTTON12, OnButton12)
	ON_BN_CLICKED(IDC_BUTTON13, OnButton13)
	ON_EN_CHANGE(IDC_EDIT1, OnChangeEdit1)
	ON_BN_CLICKED(IDC_BUTTON16, OnButton16)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCalcDlg message handlers

BOOL CCalcDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CCalcDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
	CString zero("0");
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	editText->SetWindowText(zero);
}

// Functions
double savedNum = 0;

char savedMethod = '+';

double calc(double num)
{
	if(savedMethod == '+')
		return savedNum + num;
	else if(savedMethod == '-')
		return savedNum - num;
	else if(savedMethod == '*')
		return savedNum * num;
	else if(savedMethod == '/')
		return savedNum / num;
	else if(savedMethod == '=')
		return savedNum;
	return 0;
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CCalcDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CCalcDlg::OnButton7() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("1");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton8() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("2");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton9() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("3");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton4() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("4");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}


void CCalcDlg::OnButton5() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("5");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton6() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("6");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton1() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("7");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton2() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("8");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton3() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("9");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton14() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s("0");
	editText->SetWindowText(s);
	savedMethod = '+';
	savedNum = 0;
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton10() 
{	
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	editText->GetWindowText(s);
	double num = atof(s);
	savedNum = calc(num);
	savedMethod = '+';
	CString zero("0");
	editText->SetWindowText(zero);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton15() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	editText->GetWindowText(s);
	double num = atof(s);
	savedNum = calc(num);
	savedMethod = '=';
	s.Format(_T("%lf"), savedNum);
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton11() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	editText->GetWindowText(s);
	double num = atof(s);
	savedNum = calc(num);
	savedMethod = '-';
	CString zero("0");
	editText->SetWindowText(zero);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton12() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	editText->GetWindowText(s);
	double num = atof(s);
	savedNum = calc(num);
	savedMethod = '*';
	CString zero("0");
	editText->SetWindowText(zero);
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton13() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	editText->GetWindowText(s);
	double num = atof(s);
	if(num != 0)
	{
		savedNum = calc(num);
		savedMethod = '/';
		CString zero("0");
		editText->SetWindowText(zero);
	}
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnChangeEdit1() 
{
	if(savedMethod == '=')
	{
		CWnd *editText = GetDlgItem(IDC_EDIT1);
		CString s;
		editText->GetWindowText(s);
		double num = atof(s);
		savedNum = num;
	}
	// TODO: If this is a RICHEDIT control, the control will not
	// send this notification unless you override the CDialog::OnInitDialog()
	// function and call CRichEditCtrl().SetEventMask()
	// with the ENM_CHANGE flag ORed into the mask.
	
	// TODO: Add your control notification handler code here
	
}

void CCalcDlg::OnButton16() 
{
	CWnd *editText = GetDlgItem(IDC_EDIT1);
	CString s;
	CString num("0");
	editText->GetWindowText(s);
	CString zero("0");
	if(s != zero)
		s = s + num;
	else
		s = num;
	editText->SetWindowText(s);
	// TODO: Add your control notification handler code here
	
}
