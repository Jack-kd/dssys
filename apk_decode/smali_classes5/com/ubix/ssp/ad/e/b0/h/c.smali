.class Lcom/ubix/ssp/ad/e/b0/h/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

.field public final c:Lcom/ubix/ssp/ad/e/b0/h/s/a;

.field public final d:Lcom/ubix/ssp/ad/e/b0/h/u/c;

.field public final e:Lcom/ubix/ssp/ad/e/b0/h/t/b;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/ubix/ssp/ad/e/b0/h/s/c;Lcom/ubix/ssp/ad/e/b0/h/s/a;Lcom/ubix/ssp/ad/e/b0/h/u/c;Lcom/ubix/ssp/ad/e/b0/h/t/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/h/c;->b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/b0/h/c;->c:Lcom/ubix/ssp/ad/e/b0/h/s/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/b0/h/c;->d:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/b0/h/c;->e:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/c;->b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/s/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/c;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
