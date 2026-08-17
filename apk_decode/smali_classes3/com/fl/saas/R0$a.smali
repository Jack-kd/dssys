.class Lcom/fl/saas/R0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/R0;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/fl/saas/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/n0;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/fl/saas/R0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/R0;Lcom/fl/saas/n0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/R0$a;->c:Lcom/fl/saas/R0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/R0$a;->a:Lcom/fl/saas/n0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fl/saas/R0$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "requestAdxResponse"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fl/saas/R0$a;->c:Lcom/fl/saas/R0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fl/saas/R0$a;->a:Lcom/fl/saas/n0;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fl/saas/R0$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p1, v1, v2}, Lcom/fl/saas/R0;->a(Lcom/fl/saas/R0;Ljava/lang/String;Lcom/fl/saas/n0;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fl/saas/R0$a;->a:Lcom/fl/saas/n0;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v1, 0x4fb3

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/fl/saas/n0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
