.class Lcom/fl/saas/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/v;->k(Landroid/content/Context;Lcom/fl/saas/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/fl/saas/j;

.field final synthetic c:Lcom/fl/saas/v;


# direct methods
.method public constructor <init>(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/v$a;->c:Lcom/fl/saas/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/v$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fl/saas/v$a;->b:Lcom/fl/saas/j;

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
    iget-object v0, p0, Lcom/fl/saas/v$a;->c:Lcom/fl/saas/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fl/saas/v$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fl/saas/v$a;->b:Lcom/fl/saas/j;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/fl/saas/v;->a(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/v$a;->c:Lcom/fl/saas/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fl/saas/v$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fl/saas/v$a;->b:Lcom/fl/saas/j;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/fl/saas/v;->a(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
