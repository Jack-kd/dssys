.class Lcom/baidu/mobads/sdk/internal/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/an$b;


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/baidu/mobads/sdk/internal/cb;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/cb;D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/baidu/mobads/sdk/internal/ch;->a:D

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 20
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->c(Lcom/baidu/mobads/sdk/internal/cb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;Z)Z

    .line 22
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    const-string v0, "remote update Network access failed"

    invoke-static {p1, p2, v0}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    new-instance v0, Lcom/baidu/mobads/sdk/internal/bz;

    invoke-direct {v0, p1}, Lcom/baidu/mobads/sdk/internal/bz;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;Lcom/baidu/mobads/sdk/internal/bz;)Lcom/baidu/mobads/sdk/internal/bz;

    .line 2
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/co;->b()D

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    .line 4
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/cb;->f(Lcom/baidu/mobads/sdk/internal/cb;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "__badApkVersion__9.450"

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {v1}, Lcom/baidu/mobads/sdk/internal/cb;->g(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/internal/bz;->b()D

    move-result-wide v1

    double-to-float v1, v1

    cmpl-float v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {v5}, Lcom/baidu/mobads/sdk/internal/cb;->g(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mobads/sdk/internal/bz;->b()D

    move-result-wide v5

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_1

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget-object v5, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {v5}, Lcom/baidu/mobads/sdk/internal/cb;->g(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bz;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/baidu/mobads/sdk/internal/bz;->b()D

    move-result-wide v5

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double p1, p1, v5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 11
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {p2}, Lcom/baidu/mobads/sdk/internal/cb;->e(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bv;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to download apk badVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isBad="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", compatible="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApkLoader"

    invoke-virtual {p2, v0, p1}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-wide p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->a:D

    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/cb;->g(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bz;->b()D

    move-result-wide v4

    cmpg-double p1, p1, v4

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    .line 14
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->g(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bz;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    .line 15
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->g(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/bz;->a()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->g(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bz;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/baidu/mobads/sdk/internal/cb;->b(Lcom/baidu/mobads/sdk/internal/cb;Lcom/baidu/mobads/sdk/internal/bz;)V

    return-void

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->c(Lcom/baidu/mobads/sdk/internal/cb;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    invoke-static {p1, v3}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;Z)Z

    .line 19
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/ch;->b:Lcom/baidu/mobads/sdk/internal/cb;

    const-string p2, "Refused to download remote for version..."

    invoke-static {p1, v3, p2}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method
