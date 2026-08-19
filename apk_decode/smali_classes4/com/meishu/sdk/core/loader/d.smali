.class public interface abstract Lcom/meishu/sdk/core/loader/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/IAdLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Loader:Lcom/meishu/sdk/core/loader/c;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/loader/IAdLoader;"
    }
.end annotation


# virtual methods
.method public abstract getAdLoader()Lcom/meishu/sdk/core/loader/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "Loader;"
        }
    .end annotation
.end method

.method public abstract getCacheAdListener()Lcom/meishu/sdk/core/loader/cache/c;
.end method

.method public abstract getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;
.end method

.method public abstract getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;
.end method

.method public abstract getTag()I
.end method

.method public abstract setCacheAdListener(Lcom/meishu/sdk/core/loader/cache/c;)V
.end method

.method public abstract setConCurrentLoadListener(Lcom/meishu/sdk/core/loader/concurrent/f;)V
.end method

.method public abstract setGroupIndex(I)V
.end method

.method public abstract setLocalParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
