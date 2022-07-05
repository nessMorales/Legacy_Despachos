#include "pdfreports.h"
#include "QDate"
#include "QTime"
//#include "QDebug"
#include "QDesktopServices"
#include "QMessageBox"
#include <QDir>

PdfReports::PdfReports()
{
}

PdfReports::~PdfReports()
{
}

void PdfReports::RunRpt(QString file, QVariantMap m)
{
    NCReport *report = new NCReport();
    report->reset();
    QString path = QDir::currentPath();

    QString ruta="reports/"+file;

    report->setReportFile(ruta); //set the report filename fullpath or relative to dir
    QStringList l = m.keys();
    for (int i=0;i<l.size();i++){
        report->addParameter(l.at(i),m.value(l.at(i)).toString());
    }
    //report->runReportToPreview();
    //report->addParameter("nro_nota","386776");

#ifdef WIN32
    path = "c:/windows/temp/";
#else
    path= "/tmp/";
#endif

    /*xml = xml.replace("\n\n","\n") + "\n";

    report->reset();
    report->setReportSource(NCReportSource::String);
    report->setReportDefXml(xml);
    report->runReportToPreview();

    if ( !report->hasError() ) {
        NCReportPreviewWindow *pv = new NCReportPreviewWindow();
        pv->setOutput((NCReportPreviewOutput*)report->output());
        pv->setWindowModality(Qt::WindowModal);
        pv->setAttribute( Qt::WA_DeleteOnClose );
        pv->show();
    }*/

    QString nameFile= file.mid(0,file.size()-4);
    QVariant fecha=QDate::currentDate();
    QVariant time = QTime::currentTime();
    QString timetext=time.toString().mid(0,5).replace(":","");
    QString pdfOutput =  path +nameFile + fecha.toString().replace("-","")+timetext+".pdf";
    report->runReportToPDF(pdfOutput);

   // QDesktopServices::openUrl(QUrl("file:///"+pdfOutput, QUrl::TolerantMode));

    // error handling
    if( report->hasError())
    {
        QMessageBox msgBox;
        msgBox.setText(QObject::tr("Report error: ") + report->lastErrorMsg());
        msgBox.exec();
    }
    delete report;
}

