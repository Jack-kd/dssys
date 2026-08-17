.class public Lcom/meishu/sdk/meishu_ad/splash/c$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/splash/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/c$a;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/c$a;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
