#ifndef PDFREPORTS_H
#define PDFREPORTS_H

#include <QObject>


#if defined(WIN32)
    #include "../ncreport2.12.1/src/ncreport/ncreport.h"
    #include "../ncreport2.12.1/src/ncreport/ncreportoutput.h"
    #include "../ncreport2.12.1/src/ncreport/ncreportpreviewoutput.h"
    #include "../ncreport2.12.1/src/ncreport/ncreportpreviewwindow.h"
    #include "../ncreport2.12.1/src/ncreport/ncreportprinteroutput.h"


#endif

class PdfReports
{
public:
    PdfReports();
    ~PdfReports();
    static void RunRpt(QString file,QVariantMap m);

signals:

public slots:
};

#endif // PDFREPORTS_H
