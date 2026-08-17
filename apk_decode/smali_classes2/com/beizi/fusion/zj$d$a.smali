.class Lcom/beizi/fusion/zj$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/e7$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/zj$d;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/beizi/fusion/zj$d;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/zj$d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/zj$d$a;->b:Lcom/beizi/fusion/zj$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/zj$d$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/zj$d$a;->b:Lcom/beizi/fusion/zj$d;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/beizi/fusion/zj$d;->a:Lcom/beizi/fusion/zj;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/fusion/zj$d$a;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "CN"

    .line 14
    .line 15
    invoke-static {v0, v1, p1, v2}, Lcom/beizi/fusion/zj;->a(Lcom/beizi/fusion/zj;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-static {p1}, Lcom/beizi/fusion/rm;->a(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
