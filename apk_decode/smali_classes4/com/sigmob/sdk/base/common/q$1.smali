.class Lcom/sigmob/sdk/base/common/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/q$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sigmob/sdk/base/common/q$1;->b:I

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/q$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/q$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q$1;->a:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lcom/sigmob/sdk/base/common/q$1;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-static {p1, p2, v0}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q$1;->c:Ljava/lang/String;

    :goto_1
    invoke-static {p1, p2, v1, v0, v2}, Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q$1;->c:Ljava/lang/String;

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/q$1;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/q$1;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/base/common/q$1;->a:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lcom/sigmob/sdk/base/common/q$1;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q$1;->d:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/q$1;->c:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2, v1}, Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q$1;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
