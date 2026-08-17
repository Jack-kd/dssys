package com.fl.saas.adx.base.base.builder;

import com.fl.saas.adx.base.bean.CustomLocation;

/* loaded from: classes3.dex */
public abstract class InnerBuilder<T, S> {
    protected T builder;
    protected CustomLocation customLocation;
    protected boolean isCanUseBootID = true;
    protected boolean isCanUseSSID = true;
    protected boolean isCanUseAndroid = true;
    protected boolean isCanUseMac = true;
    protected boolean isCanUseIMEI = true;
    protected boolean isCanUseIMSI = true;
    protected boolean isCanUseLocation = true;
    protected boolean isCanUseOAID = true;
    protected boolean isCanUseSensor = true;
    protected String customIMEI = "";
    protected String customAndroidId = "";
    protected String customMac = "";
    protected String customUserAgent = "";
    protected String customOAID = "";
    protected String sourceTag = "";
    protected boolean isInitializeGDT = true;
    protected boolean isInitializeKS = true;
    protected boolean isInitializeBD = true;
    protected boolean isInitializeCSJ = true;
    protected boolean isInitializeQTT = true;

    public abstract S build();

    public String getCustomAndroidId() {
        return this.customAndroidId;
    }

    public String getCustomIMEI() {
        return this.customIMEI;
    }

    public CustomLocation getCustomLocation() {
        return this.customLocation;
    }

    public String getCustomMac() {
        return this.customMac;
    }

    public String getCustomOAID() {
        return this.customOAID;
    }

    public String getCustomUserAgent() {
        return this.customUserAgent;
    }

    public String getSourceTag() {
        return this.sourceTag;
    }

    public boolean isCanUseAndroid() {
        return this.isCanUseAndroid;
    }

    public boolean isCanUseBootID() {
        return this.isCanUseBootID;
    }

    public boolean isCanUseIMEI() {
        return this.isCanUseIMEI;
    }

    public boolean isCanUseIMSI() {
        return this.isCanUseIMSI;
    }

    public boolean isCanUseLocation() {
        return this.isCanUseLocation;
    }

    public boolean isCanUseMac() {
        return this.isCanUseMac;
    }

    public boolean isCanUseOaid() {
        return this.isCanUseOAID;
    }

    public boolean isCanUseSSID() {
        return this.isCanUseSSID;
    }

    public boolean isCanUseSensor() {
        return this.isCanUseSensor;
    }

    public boolean isInitializeBD() {
        return this.isInitializeBD;
    }

    public boolean isInitializeCSJ() {
        return this.isInitializeCSJ;
    }

    public boolean isInitializeGDT() {
        return this.isInitializeGDT;
    }

    public boolean isInitializeKS() {
        return this.isInitializeKS;
    }

    public boolean isInitializeQTT() {
        return this.isInitializeQTT;
    }

    public T setCanUseAndroid(boolean z2) {
        this.isCanUseAndroid = z2;
        return this.builder;
    }

    public T setCanUseBootID(boolean z2) {
        this.isCanUseBootID = z2;
        return this.builder;
    }

    public T setCanUseIMEI(boolean z2) {
        this.isCanUseIMEI = z2;
        return this.builder;
    }

    public T setCanUseIMSI(boolean z2) {
        this.isCanUseIMSI = z2;
        return this.builder;
    }

    public T setCanUseLocation(boolean z2) {
        this.isCanUseLocation = z2;
        return this.builder;
    }

    public T setCanUseMac(boolean z2) {
        this.isCanUseMac = z2;
        return this.builder;
    }

    public T setCanUseOaid(boolean z2) {
        this.isCanUseOAID = z2;
        return this.builder;
    }

    public T setCanUseSSID(boolean z2) {
        this.isCanUseSSID = z2;
        return this.builder;
    }

    public T setCanUseSensor(boolean z2) {
        this.isCanUseSensor = z2;
        return this.builder;
    }

    public T setCustomAndroidId(String str) {
        this.customAndroidId = str;
        return this.builder;
    }

    public T setCustomIMEI(String str) {
        this.customIMEI = str;
        return this.builder;
    }

    public T setCustomLocation(CustomLocation customLocation) {
        this.customLocation = customLocation;
        return this.builder;
    }

    public T setCustomMac(String str) {
        this.customMac = str;
        return this.builder;
    }

    public T setCustomOaid(String str) {
        this.customOAID = str;
        return this.builder;
    }

    public T setCustomUserAgent(String str) {
        this.customUserAgent = str;
        return this.builder;
    }

    public T setInitializeBD(boolean z2) {
        this.isInitializeBD = z2;
        return this.builder;
    }

    public T setInitializeCSJ(boolean z2) {
        this.isInitializeCSJ = z2;
        return this.builder;
    }

    public T setInitializeGDT(boolean z2) {
        this.isInitializeGDT = z2;
        return this.builder;
    }

    public T setInitializeKS(boolean z2) {
        this.isInitializeKS = z2;
        return this.builder;
    }

    public T setInitializeQTT(boolean z2) {
        this.isInitializeQTT = z2;
        return this.builder;
    }

    public T setSourceTag(String str) {
        this.sourceTag = str;
        return this.builder;
    }
}
