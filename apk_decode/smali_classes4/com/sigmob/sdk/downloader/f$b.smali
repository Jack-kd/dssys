.class public Lcom/sigmob/sdk/downloader/f$b;
.super Lcom/sigmob/sdk/downloader/core/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/io/File;

.field final d:Ljava/lang/String;

.field final e:Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/a;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/downloader/f$b;->a:I

    const-string p1, ""

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$b;->b:Ljava/lang/String;

    sget-object p1, Lcom/sigmob/sdk/downloader/core/a;->g:Ljava/io/File;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$b;->c:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f$b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$b;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(ILcom/sigmob/sdk/downloader/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/a;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/downloader/f$b;->a:I

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/f;->c(Lcom/sigmob/sdk/downloader/f;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$b;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->l()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$b;->e:Ljava/io/File;

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/f;->d(Lcom/sigmob/sdk/downloader/f;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$b;->c:Ljava/io/File;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f$b;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f$b;->c:Ljava/io/File;

    return-object v0
.end method

.method public l()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f$b;->e:Ljava/io/File;

    return-object v0
.end method
