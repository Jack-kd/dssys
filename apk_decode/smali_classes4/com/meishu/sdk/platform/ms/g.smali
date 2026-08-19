.class public abstract Lcom/meishu/sdk/platform/ms/g;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meishu/sdk/core/ad/AdSlot;",
        "Loader:Lcom/meishu/sdk/core/loader/c;",
        "LoaderListener::Lcom/meishu/sdk/core/loader/IAdLoadListener;",
        ">",
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "T",
        "Loader;",
        "T",
        "LoaderListener;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/AdSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Loader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/meishu/sdk/core/ad/AdSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 2
    .line 3
    return-object v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
