.class Lcom/umeng/commonsdk/statistics/proto/e$a;
.super Lcom/umeng/analytics/pro/en;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/en<",
        "Lcom/umeng/commonsdk/statistics/proto/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/en;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/de;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->b(Lcom/umeng/analytics/pro/ed;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ed;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->j()Lcom/umeng/analytics/pro/ei;

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->l()Lcom/umeng/analytics/pro/dy;

    move-result-object v0

    .line 4
    iget-byte v1, v0, Lcom/umeng/analytics/pro/dy;->b:B

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->k()V

    .line 6
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    return-void

    .line 7
    :cond_0
    iget-short v0, v0, Lcom/umeng/analytics/pro/dy;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 8
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;B)V

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->c(Z)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;B)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xa

    if-ne v1, v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    .line 13
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b(Z)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;B)V

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->a(Z)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;B)V

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->m()V

    goto :goto_0
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/de;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->a(Lcom/umeng/analytics/pro/ed;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/ed;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    .line 3
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->l()Lcom/umeng/analytics/pro/ei;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ed;->a(Lcom/umeng/analytics/pro/ei;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->m()Lcom/umeng/analytics/pro/dy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ed;->a(Lcom/umeng/analytics/pro/dy;)V

    .line 7
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ed;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->c()V

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->n()Lcom/umeng/analytics/pro/dy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ed;->a(Lcom/umeng/analytics/pro/dy;)V

    .line 11
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/ed;->a(J)V

    .line 12
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->c()V

    .line 13
    :cond_1
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->o()Lcom/umeng/analytics/pro/dy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ed;->a(Lcom/umeng/analytics/pro/dy;)V

    .line 16
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/ed;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->c()V

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->d()V

    .line 19
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->b()V

    return-void
.end method
