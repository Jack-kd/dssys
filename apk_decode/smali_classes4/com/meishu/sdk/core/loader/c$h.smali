.class public Lcom/meishu/sdk/core/loader/c$h;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/meishu/sdk/core/loader/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c$h;->b:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/c$h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/ms/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c$h;->a:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->AD_LOAD_ERROR:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c$h;->b:Lcom/meishu/sdk/core/loader/c;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/c;->loaderListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
