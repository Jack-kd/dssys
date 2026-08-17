.class Lcom/sigmob/sdk/base/views/gif/c;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Lcom/sigmob/sdk/base/views/gif/b;

.field d:I

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/views/gif/b;",
            ">;"
        }
    .end annotation
.end field

.field f:[I

.field g:Z

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/gif/c;->e:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/gif/c;->f:[I

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/c;->j:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/c;->i:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/c;->m:I

    return v0
.end method
