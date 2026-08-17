.class public Lcom/ubix/ssp/ad/e/s/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:I

.field private d:Lcom/ubix/ssp/ad/e/s/g/b;

.field private e:Lcom/ubix/ssp/ad/e/s/j/a;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->f:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/s/g/a;->b:Ljava/io/File;

    iput p4, p0, Lcom/ubix/ssp/ad/e/s/g/a;->c:I

    new-instance p1, Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-direct {p1}, Lcom/ubix/ssp/ad/e/s/g/b;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->d:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {p1, p3}, Lcom/ubix/ssp/ad/e/s/g/b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->d:Lcom/ubix/ssp/ad/e/s/g/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/g/b;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->d:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/g/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->d:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/g/b;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->f:I

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/s/g/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->d:Lcom/ubix/ssp/ad/e/s/g/b;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/s/j/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->e:Lcom/ubix/ssp/ad/e/s/j/a;

    return-void
.end method

.method public b()Lcom/ubix/ssp/ad/e/s/g/b;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->d:Lcom/ubix/ssp/ad/e/s/g/b;

    return-object v0
.end method

.method public c()Lcom/ubix/ssp/ad/e/s/j/a;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->e:Lcom/ubix/ssp/ad/e/s/j/a;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadInfo{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/s/g/a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
