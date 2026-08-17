.class public final Lcom/ubix/ssp/ad/e/y/a/a$b$b;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/y/a/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static volatile b:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->e()Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    return-void
.end method

.method public static f()[Lcom/ubix/ssp/ad/e/y/a/a$b$b;
    .locals 2

    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->b:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/y/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->b:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    sput-object v1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->b:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->b:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->d:I

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->m(II)V

    :cond_1
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->e:I

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->m(II)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->d:I

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->e:I

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/a$b$b;
    .locals 2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->x()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->e:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->x()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->d:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/a$b$b;
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->d:I

    iput v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->e:I

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
