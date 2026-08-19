.class public interface abstract Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract getAction()I
.end method

.method public abstract getAreaCode()Ljava/lang/String;
.end method

.method public abstract getCallbackApi()Ljava/lang/String;
.end method

.method public abstract getCallbackPath()Ljava/lang/String;
.end method

.method public abstract getEventData()Ljava/lang/String;
.end method

.method public abstract getPendantCode()Ljava/lang/String;
.end method

.method public abstract getPendantResourceId()J
.end method

.method public abstract getRandomRangeMillis()J
.end method

.method public abstract getThroughInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isNeedBusinessHandle()Z
.end method

.method public abstract isNeedRandomCall()Z
.end method

.method public abstract isNeedServerProcess()Z
.end method

.method public abstract isNeedSignalFallback()Z
.end method
