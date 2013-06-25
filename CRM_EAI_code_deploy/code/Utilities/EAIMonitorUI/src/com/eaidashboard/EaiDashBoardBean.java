package com.eaidashboard;

import java.text.Format;

import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EaiDashBoardBean {
    public EaiDashBoardBean() {


    }

    private Date ordDate;
    private String sapsuccordcount;
    private String sapsfailordcount;
    private String csflownordcount;
    private String cpfgsuccordcount;
    private String cpfgfailordcount;
    private String tomsuccordcount;
    private String tomfailordcount;
    private String sapsuccordcountSum;
    private String sapsfailordcountSum;
    private String csflownordcountSum;
    private String cpfgsuccordcountSum;
    private String cpfgfailordcountSum;
    private String tomsuccordcountSum;
    private String tomfailordcountSum;
    private String elmSuccOrdCount;
	private String elmFailOrdCount;
	private String elmSuccOrdCountSum;
    private String elmFailOrdCountSum;

    private Date quotesDate;
    private String csQuotesFlownCount;
    private String csQuotesFlownCountSum;

    private Date accdate;
    private String sapSuccAccCount;
    private String sapFailAccCount;
    private String csFlownAccCount;
    private String cpfgSuccAccCount;
    private String cpfgFailAccCount;
    private String tomSuccAccCount;
    private String tomFailAccCount;
    private String crmTrustSuccAccCount;
    private String crmTrustFailAccCount;
    private String trustCrmSuccAccCount;
    private String trustCrmFailAccCount;

    private String sapSuccAccCountTotal;
    private String sapSuccAccCountSum;
    private String sapFailAccCountSum;
    private String csFlownAccCountSum;
    private String cpfgSuccAccCountSum;
    private String cpfgFailAccCountSum;
    private String tomSuccAccCountSum;
    private String tomFailAccCountSum;
    private String crmTrustSuccAccCountSum;
    private String crmTrustFailAccCountSum;
    private String trustCrmSuccAccCountSum;
    private String trustCrmFailAccCountSum;
	private String elmSuccAccCount;
	private String elmFailAccCount;
	private String elmSuccAccCountSum;
    private String elmFailAccCountSum;

    private Date optyDate;
    private String crmTrustSuccOptyCount;
    private String crmTrustFailOptyCount;
    private String trustCrmSuccOptyCount;
    private String trustCrmFailOptyCount;
    private String crmTrustSuccOptyCountSum;
    private String crmTrustFailOptyCountSum;
    private String trustCrmSuccOptyCountSum;
    private String trustCrmFailOptyCountSum;

    private Date contactDate;
    private String sapSuccContactCount;
    private String sapFailContactCount;
    private String cpfgSuccContactCount;
    private String cpfgFailContactCount;
    private String tomSuccContactCount;
    private String tomFailContactCount;
    private String sapSuccContactCountSum;
    private String sapFailContactCountSum;
    private String cpfgSuccContactCountSum;
    private String cpfgFailContactCountSum;
    private String tomSuccContactCountSum;
    private String tomFailContactCountSum;
    
    private String crmTrustSuccContactCount;
    private String crmTrustFailContactCount;
    private String trustCrmSuccContactCount;
    private String trustCrmFailContactCount;
    private String crmTrustSuccContactCountSum;
    private String crmTrustFailContactCountSum;
    private String trustCrmSuccContactCountSum;
    private String trustCrmFailContactCountSum;

    public void setSapsuccordcount(String sapsuccordcount) {
        this.sapsuccordcount = sapsuccordcount;
    }

    public String getSapsuccordcount() {
        return sapsuccordcount;
    }

    public void setSapsfailordcount(String sapsfailordcount) {
        this.sapsfailordcount = sapsfailordcount;
    }

    public String getSapsfailordcount() {
        return sapsfailordcount;
    }

    public void setCsflownordcount(String csflownordcount) {
        this.csflownordcount = csflownordcount;
    }

    public String getCsflownordcount() {
        return csflownordcount;
    }

    public void setCpfgsuccordcount(String cpfgsuccordcount) {
        this.cpfgsuccordcount = cpfgsuccordcount;
    }

    public String getCpfgsuccordcount() {
        return cpfgsuccordcount;
    }

    public void setCpfgfailordcount(String cpfgfailordcount) {
        this.cpfgfailordcount = cpfgfailordcount;
    }

    public String getCpfgfailordcount() {
        return cpfgfailordcount;
    }

    public void setTomsuccordcount(String tomsuccordcount) {
        this.tomsuccordcount = tomsuccordcount;
    }

    public String getTomsuccordcount() {
        return tomsuccordcount;
    }

    public void setTomfailordcount(String tomfailordcount) {
        this.tomfailordcount = tomfailordcount;
    }

    public String getTomfailordcount() {
        return tomfailordcount;
    }

    public void setCsQuotesFlownCount(String csQuotesFlownCount) {
        this.csQuotesFlownCount = csQuotesFlownCount;
    }

    public String getCsQuotesFlownCount() {
        return csQuotesFlownCount;
    }

     public void setSapSuccAccCount(String sapSuccAccCount) {
        this.sapSuccAccCount = sapSuccAccCount;
    }

    public String getSapSuccAccCount() {
        return sapSuccAccCount;
    }



    public void setCsFlownAccCount(String csFlownAccCount) {
        this.csFlownAccCount = csFlownAccCount;
    }

    public String getCsFlownAccCount() {
        return csFlownAccCount;
    }

    public void setCpfgSuccAccCount(String cpfgSuccAccCount) {
        this.cpfgSuccAccCount = cpfgSuccAccCount;
    }

    public String getCpfgSuccAccCount() {
        return cpfgSuccAccCount;
    }

    public void setCpfgFailAccCount(String cpfgFailAccCount) {
        this.cpfgFailAccCount = cpfgFailAccCount;
    }

    public String getCpfgFailAccCount() {
        return cpfgFailAccCount;
    }

    public void setTomSuccAccCount(String tomSuccAccCount) {
        this.tomSuccAccCount = tomSuccAccCount;
    }

    public String getTomSuccAccCount() {
        return tomSuccAccCount;
    }

    public void setTomFailAccCount(String tomFailAccCount) {
        this.tomFailAccCount = tomFailAccCount;
    }

    public String getTomFailAccCount() {
        return tomFailAccCount;
    }

    public void setCrmTrustSuccAccCount(String crmTrustSuccAccCount) {
        this.crmTrustSuccAccCount = crmTrustSuccAccCount;
    }

    public String getCrmTrustSuccAccCount() {
        return crmTrustSuccAccCount;
    }

    public void setCrmTrustFailAccCount(String crmTrustFailAccCount) {
        this.crmTrustFailAccCount = crmTrustFailAccCount;
    }

    public String getCrmTrustFailAccCount() {
        return crmTrustFailAccCount;
    }

    public void setTrustCrmSuccAccCount(String trustCrmSuccAccCount) {
        this.trustCrmSuccAccCount = trustCrmSuccAccCount;
    }

    public String getTrustCrmSuccAccCount() {
        return trustCrmSuccAccCount;
    }

    public void setTrustCrmFailAccCount(String trustCrmFailAccCount) {
        this.trustCrmFailAccCount = trustCrmFailAccCount;
    }

    public String getTrustCrmFailAccCount() {
        return trustCrmFailAccCount;
    }

    public void setSapFailAccCount(String sapFailAccCount) {
        this.sapFailAccCount = sapFailAccCount;
    }

    public String getSapFailAccCount() {
        return sapFailAccCount;
    }

     public void setCrmTrustSuccOptyCount(String crmTrustSuccOptyCount) {
        this.crmTrustSuccOptyCount = crmTrustSuccOptyCount;
    }

    public String getCrmTrustSuccOptyCount() {
        return crmTrustSuccOptyCount;
    }

    public void setCrmTrustFailOptyCount(String crmTrustFailOptyCount) {
        this.crmTrustFailOptyCount = crmTrustFailOptyCount;
    }

    public String getCrmTrustFailOptyCount() {
        return crmTrustFailOptyCount;
    }

    public void setTrustCrmSuccOptyCount(String trustCrmSuccOptyCount) {
        this.trustCrmSuccOptyCount = trustCrmSuccOptyCount;
    }

    public String getTrustCrmSuccOptyCount() {
        return trustCrmSuccOptyCount;
    }

    public void setTrustCrmFailOptyCount(String trustCrmFailOptyCount) {
        this.trustCrmFailOptyCount = trustCrmFailOptyCount;
    }

    public String getTrustCrmFailOptyCount() {
        return trustCrmFailOptyCount;
    }

    public void setSapSuccContactCount(String sapSuccContactCount) {
        this.sapSuccContactCount = sapSuccContactCount;
    }

    public String getSapSuccContactCount() {
        return sapSuccContactCount;
    }

    public void setSapFailContactCount(String sapFailContactCount) {
        this.sapFailContactCount = sapFailContactCount;
    }

    public String getSapFailContactCount() {
        return sapFailContactCount;
    }

    public void setCpfgSuccContactCount(String cpfgSuccContactCount) {
        this.cpfgSuccContactCount = cpfgSuccContactCount;
    }

    public String getCpfgSuccContactCount() {
        return cpfgSuccContactCount;
    }

    public void setCpfgFailContactCount(String cpfgFailContactCount) {
        this.cpfgFailContactCount = cpfgFailContactCount;
    }

    public String getCpfgFailContactCount() {
        return cpfgFailContactCount;
    }

    public void setTomSuccContactCount(String tomSuccContactCount) {
        this.tomSuccContactCount = tomSuccContactCount;
    }

    public String getTomSuccContactCount() {
        return tomSuccContactCount;
    }

    public void setTomFailContactCount(String tomFailContactCount) {
        this.tomFailContactCount = tomFailContactCount;
    }

    public String getTomFailContactCount() {
        return tomFailContactCount;
    }

    public void setSapSuccAccCountSum(String sapSuccAccCountSum) {
        this.sapSuccAccCountSum = sapSuccAccCountSum;
    }

    public String getSapSuccAccCountSum() {
        return sapSuccAccCountSum;
    }

    public void setSapFailAccCountSum(String sapFailAccCountSum) {
        this.sapFailAccCountSum = sapFailAccCountSum;
    }

    public String getSapFailAccCountSum() {
        return sapFailAccCountSum;
    }

    public void setCsFlownAccCountSum(String csFlownAccCountSum) {
        this.csFlownAccCountSum = csFlownAccCountSum;
    }

    public String getCsFlownAccCountSum() {
        return csFlownAccCountSum;
    }

    public void setCpfgSuccAccCountSum(String cpfgSuccAccCountSum) {
        this.cpfgSuccAccCountSum = cpfgSuccAccCountSum;
    }

    public String getCpfgSuccAccCountSum() {
        return cpfgSuccAccCountSum;
    }

    public void setCpfgFailAccCountSum(String cpfgFailAccCountSum) {
        this.cpfgFailAccCountSum = cpfgFailAccCountSum;
    }

    public String getCpfgFailAccCountSum() {
        return cpfgFailAccCountSum;
    }

    public void setTomSuccAccCountSum(String tomSuccAccCountSum) {
        this.tomSuccAccCountSum = tomSuccAccCountSum;
    }

    public String getTomSuccAccCountSum() {
        return tomSuccAccCountSum;
    }

    public void setTomFailAccCountSum(String tomFailAccCountSum) {
        this.tomFailAccCountSum = tomFailAccCountSum;
    }

    public String getTomFailAccCountSum() {
        return tomFailAccCountSum;
    }

    public void setCrmTrustSuccAccCountSum(String crmTrustSuccAccCountSum) {
        this.crmTrustSuccAccCountSum = crmTrustSuccAccCountSum;
    }

    public String getCrmTrustSuccAccCountSum() {
        return crmTrustSuccAccCountSum;
    }

    public void setCrmTrustFailAccCountSum(String crmTrustFailAccCountSum) {
        this.crmTrustFailAccCountSum = crmTrustFailAccCountSum;
    }

    public String getCrmTrustFailAccCountSum() {
        return crmTrustFailAccCountSum;
    }

    public void setTrustCrmSuccAccCountSum(String trustCrmSuccAccCountSum) {
        this.trustCrmSuccAccCountSum = trustCrmSuccAccCountSum;
    }

    public String getTrustCrmSuccAccCountSum() {
        return trustCrmSuccAccCountSum;
    }

    public void setTrustCrmFailAccCountSum(String trustCrmFailAccCountSum) {
        this.trustCrmFailAccCountSum = trustCrmFailAccCountSum;
    }

    public String getTrustCrmFailAccCountSum() {
        return trustCrmFailAccCountSum;
    }

    public void setSapSuccAccCountTotal(String sapSuccAccCountTotal) {
        this.sapSuccAccCountTotal = sapSuccAccCountTotal;
    }

    public String getSapSuccAccCountTotal() {
        return sapSuccAccCountTotal;
    }

    public void setCrmTrustSuccOptyCountSum(String crmTrustSuccOptyCountSum) {
        this.crmTrustSuccOptyCountSum = crmTrustSuccOptyCountSum;
    }

    public String getCrmTrustSuccOptyCountSum() {
        return crmTrustSuccOptyCountSum;
    }

    public void setCrmTrustFailOptyCountSum(String crmTrustFailOptyCountSum) {
        this.crmTrustFailOptyCountSum = crmTrustFailOptyCountSum;
    }

    public String getCrmTrustFailOptyCountSum() {
        return crmTrustFailOptyCountSum;
    }

    public void setTrustCrmSuccOptyCountSum(String trustCrmSuccOptyCountSum) {
        this.trustCrmSuccOptyCountSum = trustCrmSuccOptyCountSum;
    }

    public String getTrustCrmSuccOptyCountSum() {
        return trustCrmSuccOptyCountSum;
    }

    public void setTrustCrmFailOptyCountSum(String trustCrmFailOptyCountSum) {
        this.trustCrmFailOptyCountSum = trustCrmFailOptyCountSum;
    }

    public String getTrustCrmFailOptyCountSum() {
        return trustCrmFailOptyCountSum;
    }

    public void setSapsuccordcountSum(String sapsuccordcountSum) {
        this.sapsuccordcountSum = sapsuccordcountSum;
    }

    public String getSapsuccordcountSum() {
        return sapsuccordcountSum;
    }

    public void setSapsfailordcountSum(String sapsfailordcountSum) {
        this.sapsfailordcountSum = sapsfailordcountSum;
    }

    public String getSapsfailordcountSum() {
        return sapsfailordcountSum;
    }

    public void setCsflownordcountSum(String csflownordcountSum) {
        this.csflownordcountSum = csflownordcountSum;
    }

    public String getCsflownordcountSum() {
        return csflownordcountSum;
    }

    public void setCpfgsuccordcountSum(String cpfgsuccordcountSum) {
        this.cpfgsuccordcountSum = cpfgsuccordcountSum;
    }

    public String getCpfgsuccordcountSum() {
        return cpfgsuccordcountSum;
    }

    public void setCpfgfailordcountSum(String cpfgfailordcountSum) {
        this.cpfgfailordcountSum = cpfgfailordcountSum;
    }

    public String getCpfgfailordcountSum() {
        return cpfgfailordcountSum;
    }

    public void setTomsuccordcountSum(String tomsuccordcountSum) {
        this.tomsuccordcountSum = tomsuccordcountSum;
    }

    public String getTomsuccordcountSum() {
        return tomsuccordcountSum;
    }

    public void setTomfailordcountSum(String tomfailordcountSum) {
        this.tomfailordcountSum = tomfailordcountSum;
    }

    public String getTomfailordcountSum() {
        return tomfailordcountSum;
    }

    public void setCsQuotesFlownCountSum(String csQuotesFlownCountSum) {
        this.csQuotesFlownCountSum = csQuotesFlownCountSum;
    }

    public String getCsQuotesFlownCountSum() {
        return csQuotesFlownCountSum;
    }

    public void setSapSuccContactCountSum(String sapSuccContactCountSum) {
        this.sapSuccContactCountSum = sapSuccContactCountSum;
    }

    public String getSapSuccContactCountSum() {
        return sapSuccContactCountSum;
    }

    public void setSapFailContactCountSum(String sapFailContactCountSum) {
        this.sapFailContactCountSum = sapFailContactCountSum;
    }

    public String getSapFailContactCountSum() {
        return sapFailContactCountSum;
    }

    public void setCpfgSuccContactCountSum(String cpfgSuccContactCountSum) {
        this.cpfgSuccContactCountSum = cpfgSuccContactCountSum;
    }

    public String getCpfgSuccContactCountSum() {
        return cpfgSuccContactCountSum;
    }

    public void setCpfgFailContactCountSum(String cpfgFailContactCountSum) {
        this.cpfgFailContactCountSum = cpfgFailContactCountSum;
    }

    public String getCpfgFailContactCountSum() {
        return cpfgFailContactCountSum;
    }

    public void setTomSuccContactCountSum(String tomSuccContactCountSum) {
        this.tomSuccContactCountSum = tomSuccContactCountSum;
    }

    public String getTomSuccContactCountSum() {
        return tomSuccContactCountSum;
    }

    public void setTomFailContactCountSum(String tomFailContactCountSum) {
        this.tomFailContactCountSum = tomFailContactCountSum;
    }

    public String getTomFailContactCountSum() {
        return tomFailContactCountSum;
    }

	public void setElmSuccOrdCount(String elmSuccOrdCount) {
		this.elmSuccOrdCount = elmSuccOrdCount;
	}

	public String getElmSuccOrdCount() {
		return elmSuccOrdCount;
    }

    public void setElmFailOrdCount(String elmFailOrdCount) {
		this.elmFailOrdCount = elmFailOrdCount;
	}

	public String getElmFailOrdCount() {
		return elmFailOrdCount;
    }

    public void setElmSuccOrdCountSum(String elmSuccOrdCountSum) {
		this.elmSuccOrdCountSum = elmSuccOrdCountSum;
	}

	public String getElmSuccOrdCountSum() {
		return elmSuccOrdCountSum;
	}

	public void setElmFailOrdCountSum(String elmFailOrdCountSum) {
		this.elmFailOrdCountSum = elmFailOrdCountSum;
	}
  
  public String getElmFailOrdCountSum() {
    return elmFailOrdCountSum;
  }
  
	public void setElmSuccAccCount(String elmSuccAccCount) {
		this.elmSuccAccCount = elmSuccAccCount;
	}

	public String getElmSuccAccCount() {
		return elmSuccAccCount;
	}

	public void setElmFailAccCount(String elmFailAccCount) {
		this.elmFailAccCount = elmFailAccCount;
	}

	public String getElmFailAccCount() {
		return elmFailAccCount;
	}

	public void setElmSuccAccCountSum(String elmSuccAccCountSum) {
		this.elmSuccAccCountSum = elmSuccAccCountSum;
	}

	public String getElmSuccAccCountSum() {
		return elmSuccAccCountSum;
	}

	public void setElmFailAccCountSum(String elmFailAccCountSum) {
		this.elmFailAccCountSum = elmFailAccCountSum;
	}

	public String getElmFailAccCountSum() {
		return elmFailAccCountSum;
    }

    public String getQuotesDateFormatted(){
                    return formateDate(quotesDate);
            }
    public String getAccountDateFormatted(){
                    return formateDate(accdate);
            }

    public String getOptyDateFormatted(){
                    return formateDate(optyDate);
            }
    public String getContactDateFormatted(){
                    return formateDate(contactDate);
            }

    public String getOrdDateFormatted(){
                    return formateDate(ordDate);
            }

    public void setOrdDate(Date ordDate) {
        this.ordDate = ordDate;
    }

    public Date getOrdDate() {
        return ordDate;
    }

    public void setQuotesDate(Date quotesDate) {
        this.quotesDate = quotesDate;
    }

    public Date getQuotesDate() {
        return quotesDate;
    }

    public void setAccdate(Date accdate) {
        this.accdate = accdate;
    }

    public String formateDate(Date date) {

        /*SimpleDateFormat format = new SimpleDateFormat("dd/mmm/yyyy");
        Date formattedDate=null;
            try {
              formattedDate= format.parseObject(date);
              System.out.println(date);
            } catch (ParseException e) {

              e.printStackTrace();
            }*/

            Format Formatter;
           // Date dateVal= new Date();
            Formatter = new SimpleDateFormat("dd-MMM-yyyy");
            String s = Formatter.format(date);

            return s;
    }

    public Date getAccdate() {
        return accdate;
    }

    public void setOptyDate(Date optyDate) {
        this.optyDate = optyDate;
    }

    public Date getOptyDate() {
        return optyDate;
    }

    public void setContactDate(Date contactDate) {
        this.contactDate = contactDate;
    }

    public Date getContactDate() {
        return contactDate;
    }

    public void setTrustCrmSuccContactCount(String trustCrmSuccContactCount) {
        this.trustCrmSuccContactCount = trustCrmSuccContactCount;
    }

    public String getTrustCrmSuccContactCount() {
        return trustCrmSuccContactCount;
    }

    public void setTrustCrmFailContactCount(String trustCrmFailContactCount) {
        this.trustCrmFailContactCount = trustCrmFailContactCount;
    }

    public String getTrustCrmFailContactCount() {
        return trustCrmFailContactCount;
    }

    public void setCrmTrustSuccContactCountSum(String crmTrustSuccContactCountSum) {
        this.crmTrustSuccContactCountSum = crmTrustSuccContactCountSum;
    }

    public String getCrmTrustSuccContactCountSum() {
        return crmTrustSuccContactCountSum;
    }

    public void setCrmTrustFailContactCountSum(String crmTrustFailContactCountSum) {
        this.crmTrustFailContactCountSum = crmTrustFailContactCountSum;
    }

    public String getCrmTrustFailContactCountSum() {
        return crmTrustFailContactCountSum;
    }

    public void setTrustCrmSuccContactCountSum(String trustCrmSuccContactCountSum) {
        this.trustCrmSuccContactCountSum = trustCrmSuccContactCountSum;
    }

    public String getTrustCrmSuccContactCountSum() {
        return trustCrmSuccContactCountSum;
    }

    public void setTrustCrmFailContactCountSum(String trustCrmFailContactCountSum) {
        this.trustCrmFailContactCountSum = trustCrmFailContactCountSum;
    }

    public String getTrustCrmFailContactCountSum() {
        return trustCrmFailContactCountSum;
    }

    public void setCrmTrustSuccContactCount(String crmTrustSuccContactCount) {
        this.crmTrustSuccContactCount = crmTrustSuccContactCount;
    }

    public String getCrmTrustSuccContactCount() {
        return crmTrustSuccContactCount;
    }

    public void setCrmTrustFailContactCount(String crmTrustFailContactCount) {
        this.crmTrustFailContactCount = crmTrustFailContactCount;
    }

    public String getCrmTrustFailContactCount() {
        return crmTrustFailContactCount;
    }
}
