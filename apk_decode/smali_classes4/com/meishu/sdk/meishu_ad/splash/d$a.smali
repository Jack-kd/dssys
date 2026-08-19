.class public Lcom/meishu/sdk/meishu_ad/splash/d$a;
.super Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/meishu_ad/splash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder<",
        "Lcom/meishu/sdk/meishu_ad/splash/d$a;",
        "Lcom/meishu/sdk/meishu_ad/splash/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;-><init>(Lcom/meishu/sdk/core/ad/BaseAdSlot;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build()Lcom/meishu/sdk/core/ad/BaseAdSlot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 0

    return-object p0
.end method

.method public setPowerIndex(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 2
    .line 3
    iput p1, v0, Lcom/meishu/sdk/meishu_ad/splash/d;->F:I

    .line 4
    .line 5
    return-object p0
.end method
