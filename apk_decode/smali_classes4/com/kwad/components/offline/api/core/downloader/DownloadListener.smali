.class public interface abstract Lcom/kwad/components/offline/api/core/downloader/DownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCanceled(I)V
.end method

.method public abstract onCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onError(ILjava/lang/Throwable;)V
.end method

.method public abstract onProgress(IJJ)V
.end method

.method public abstract onStart(I)V
.end method
