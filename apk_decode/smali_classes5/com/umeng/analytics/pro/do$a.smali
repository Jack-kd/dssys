.class Lcom/umeng/analytics/pro/do$a;
.super Lcom/umeng/analytics/pro/en;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/en<",
        "Lcom/umeng/analytics/pro/do;",
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

.method public synthetic constructor <init>(Lcom/umeng/analytics/pro/do$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/do$a;-><init>()V

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
    check-cast p2, Lcom/umeng/analytics/pro/do;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/do$a;->b(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/do;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-object v0, p2, Lcom/umeng/analytics/pro/do;->b:Lcom/umeng/analytics/pro/dl;

    .line 3
    iput-object v0, p2, Lcom/umeng/analytics/pro/do;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->j()Lcom/umeng/analytics/pro/ei;

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->l()Lcom/umeng/analytics/pro/dy;

    move-result-object v0

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/do;->a(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/dy;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/do;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 7
    iget-short v0, v0, Lcom/umeng/analytics/pro/dy;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/do;->a(S)Lcom/umeng/analytics/pro/dl;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/do;->b:Lcom/umeng/analytics/pro/dl;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->m()V

    .line 9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->l()Lcom/umeng/analytics/pro/dy;

    .line 10
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->k()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/de;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/do;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/do$a;->a(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/do;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/do;->a()Lcom/umeng/analytics/pro/dl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/do;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/do;->d()Lcom/umeng/analytics/pro/ei;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ed;->a(Lcom/umeng/analytics/pro/ei;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/analytics/pro/do;->b:Lcom/umeng/analytics/pro/dl;

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/do;->c(Lcom/umeng/analytics/pro/dl;)Lcom/umeng/analytics/pro/dy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ed;->a(Lcom/umeng/analytics/pro/dy;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/do;->a(Lcom/umeng/analytics/pro/ed;)V

    .line 6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->c()V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->d()V

    .line 8
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->b()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/ee;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ee;-><init>(Ljava/lang/String;)V

    throw p1
.end method
