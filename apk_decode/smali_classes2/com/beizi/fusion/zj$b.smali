.class Lcom/beizi/fusion/zj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/mc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/zj;->a(Landroid/content/Context;Lcom/beizi/fusion/zj$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/beizi/fusion/zj$d;

.field final synthetic c:Lcom/beizi/fusion/zj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/zj;Landroid/content/Context;Lcom/beizi/fusion/zj$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/zj$b;->c:Lcom/beizi/fusion/zj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/zj$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/zj$b;->b:Lcom/beizi/fusion/zj$d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/beizi/fusion/zj$b;->b:Lcom/beizi/fusion/zj$d;

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/zj$b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/beizi/fusion/zj$d;->a(Lcom/beizi/fusion/zj$d;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/zj$b;->c:Lcom/beizi/fusion/zj;

    iget-object v1, p0, Lcom/beizi/fusion/zj$b;->a:Landroid/content/Context;

    const-string v2, "SM"

    invoke-static {v0, v1, p1, v2}, Lcom/beizi/fusion/zj;->a(Lcom/beizi/fusion/zj;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/beizi/fusion/rm;->a(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/zj$b;->b:Lcom/beizi/fusion/zj$d;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/zj$b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/beizi/fusion/zj$d;->a(Lcom/beizi/fusion/zj$d;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
