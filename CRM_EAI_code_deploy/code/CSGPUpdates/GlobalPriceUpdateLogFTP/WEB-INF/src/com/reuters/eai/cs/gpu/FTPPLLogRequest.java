package com.reuters.eai.cs.gpu;

import com.reuters.ns._2007._01._25.gcap.eai.cs.gpm.pricemanagement.PropagateGPStatusReq;
import com.reuters.ns._2007._01._25.gcap.eai.cs.gpm.pricemanagement.PropagateGPStatusRes;
import com.reuters.ns._2007._01._25.gcap.eai.cs.gpm.pricemanagement.EaiHeader;

import com.jscape.inet.ftp.*;

import com.jscape.inet.sftp.Sftp;
import com.jscape.inet.ssh.util.SshParameters;

import java.io.File;


public class FTPPLLogRequest {
    public PropagateGPStatusRes FTPLogRequest(PropagateGPStatusReq parameter) {
        PropagateGPStatusReq GPStatusReq = parameter;
        EaiHeader eaiHeader = GPStatusReq.getEaiHeader();
        String sourceIPAddress = GPStatusReq.getSourceIPAddress();
        String sourceUserName = GPStatusReq.getSourceUserName();
        String sourcePassword = GPStatusReq.getSourcePassword();
        String sourceLocation = GPStatusReq.getSourceLocalDirectory();
        String EAILocalDirectory = GPStatusReq.getEAIlocalDirectory();
        String logFileName = GPStatusReq.getLogFileName();
        String CSInstance = GPStatusReq.getCSInstance();
        String CSEnvironment = GPStatusReq.getCSEnvironment();
        try {
            
            SshParameters params = new SshParameters(sourceIPAddress,sourceUserName,sourcePassword);
             Sftp ftp = new Sftp(params);
            
            
            
            ftp.connect();
            ftp.setAscii();
            ftp.setDir(sourceLocation);
            ftp.setLocalDir(new File(EAILocalDirectory));
            ftp.download(logFileName);


            //ftp.upload("sample.txt");

            ftp.disconnect();
        } catch (Exception e) {
            System.out.println(e);
        }
        PropagateGPStatusRes pro = new PropagateGPStatusRes();
        pro.setResult("Success");
        return pro;
        
    }
    
}
