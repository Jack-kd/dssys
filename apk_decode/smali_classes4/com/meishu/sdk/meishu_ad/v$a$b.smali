.class public Lcom/meishu/sdk/meishu_ad/v$a$b;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v$a;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v$a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$a$b;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$a$b;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;->onSkip()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
