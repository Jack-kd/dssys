.class public Lcom/meishu/sdk/platform/ms/splash/g$c;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/splash/g;->onAdRenderFail(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lcom/meishu/sdk/platform/ms/splash/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/g;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/g$c;->c:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/splash/g$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/meishu/sdk/platform/ms/splash/g$c;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g$c;->c:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/g$c;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$c;->b:I

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void

    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
