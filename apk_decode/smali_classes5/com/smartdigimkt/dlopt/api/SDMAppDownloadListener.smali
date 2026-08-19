.class public interface abstract Lcom/smartdigimkt/dlopt/api/SDMAppDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/api/SDMEventInterface;


# virtual methods
.method public abstract onDownloadFail(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFinish(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadPause(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadStart(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadUpdate(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInstalled(Ljava/lang/String;Ljava/lang/String;)V
.end method
