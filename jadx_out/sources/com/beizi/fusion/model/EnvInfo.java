package com.beizi.fusion.model;

import android.content.Context;
import android.os.Debug;
import com.beizi.fusion.c7;
import com.beizi.fusion.j7;
import com.beizi.fusion.q1;
import com.beizi.fusion.uf;
import com.beizi.fusion.vo;

/* loaded from: classes2.dex */
public class EnvInfo {
    private String developerMode;
    private String isDebugApk;
    private String isDebugConnected;
    private String isLockScreen;
    private String isSimulator;
    private String isUsb;
    private String isVpn;
    private String isWifiProxy;
    private String isp;
    private String net;
    private String userAgent;

    public EnvInfo(Context context) {
        this.userAgent = uf.a().b(context);
        this.net = String.valueOf(c7.c(context));
        if (q1.i().s()) {
            this.isp = String.valueOf(c7.d(context));
        } else {
            this.isp = q1.i().o();
        }
        this.developerMode = String.valueOf(vo.n(context));
        this.isDebugApk = String.valueOf(vo.m(context));
        this.isDebugConnected = String.valueOf(Debug.isDebuggerConnected());
        this.isWifiProxy = String.valueOf(vo.p(context));
        this.isVpn = String.valueOf(vo.c());
        this.isSimulator = String.valueOf(j7.h().a(context));
    }

    public String getIsp() {
        return this.isp;
    }

    public String getNet() {
        return this.net;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String isDeveloperMode() {
        return this.developerMode;
    }

    public String isIsDebugApk() {
        return this.isDebugApk;
    }

    public String isIsDebugConnected() {
        return this.isDebugConnected;
    }

    public String isIsLockScreen() {
        return this.isLockScreen;
    }

    public String isIsSimulator() {
        return this.isSimulator;
    }

    public String isIsUsb() {
        return this.isUsb;
    }

    public String isIsVpn() {
        return this.isVpn;
    }

    public String isIsWifiProxy() {
        return this.isWifiProxy;
    }

    public void setDeveloperMode(String str) {
        this.developerMode = str;
    }

    public void setIsDebugApk(String str) {
        this.isDebugApk = str;
    }

    public void setIsDebugConnected(String str) {
        this.isDebugConnected = str;
    }

    public void setIsLockScreen(String str) {
        this.isLockScreen = str;
    }

    public void setIsSimulator(String str) {
        this.isSimulator = str;
    }

    public void setIsUsb(String str) {
        this.isUsb = str;
    }

    public void setIsVpn(String str) {
        this.isVpn = str;
    }

    public void setIsWifiProxy(String str) {
        this.isWifiProxy = str;
    }

    public void setIsp(String str) {
        this.isp = str;
    }

    public void setNet(String str) {
        this.net = str;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }
}
