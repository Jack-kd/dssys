.class public interface abstract Lcom/smartdigimkt/sdk/api/business/omsdk/IOmsdkHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createNativeAdSession(Landroid/content/Context;ZLcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;)Lcom/smartdigimkt/u1/a;
.end method

.method public abstract createWebViewAdSession(Landroid/content/Context;Landroid/webkit/WebView;Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;)Lcom/smartdigimkt/u1/a;
.end method

.method public abstract getOmsdkVersion()Ljava/lang/String;
.end method

.method public abstract injectScriptContentIntoHtml(Ljava/lang/String;Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;)Ljava/lang/String;
.end method

.method public abstract supportOmsdk()Z
.end method
