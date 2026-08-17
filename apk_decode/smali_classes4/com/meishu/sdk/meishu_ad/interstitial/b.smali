.class public Lcom/meishu/sdk/meishu_ad/interstitial/b;
.super Lcom/meishu/sdk/core/ad/BaseAdSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/interstitial/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
