.class public final Lcom/ubix/ssp/ad/e/y/a/c$a;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/y/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:D

.field public c:D

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/c$a;->e()Lcom/ubix/ssp/ad/e/y/a/c$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/c$a;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/c$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->b:D

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ID)V

    :cond_0
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->c:D

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ID)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->e:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->f:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->g:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->b:D

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->c:D

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->d:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->e:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->f:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->g:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->h:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/c$a;
    .locals 2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    const/16 v1, 0x11

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->f()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->c:D

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->f()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->b:D

    goto :goto_0

    :cond_8
    :goto_1
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/c$a;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->b:D

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->c:D

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/c$a;->h:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
