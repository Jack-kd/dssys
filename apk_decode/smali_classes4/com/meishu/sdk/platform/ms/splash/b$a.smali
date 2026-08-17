.class public Lcom/meishu/sdk/platform/ms/splash/b$a;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/splash/b;->splashAnimationFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/splash/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$a;->b:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/splash/b$a;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b$a;->b:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b$a;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/splash/b;->a(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
