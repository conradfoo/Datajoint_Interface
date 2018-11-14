function sobj = createMouseSession(ptiff,padi,adinum,fb)
    sobj.path_to_tiff = ptiff;
    sobj.path_to_adi = padi;
    
    finf = dir(sobj.path_to_tiff);
    [y,m,d] = datevec(finf.datenum);
    sobj.session_date = [num2str(y,'%.4u') '-' num2str(m,'%.2u') '-' num2str(d,'%.2u')];
    
    sobj.adi_trial_num = adinum;
    
    sobj.type = fb;
end
    