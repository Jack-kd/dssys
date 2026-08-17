.class public Lcom/sigmob/sdk/base/views/ab$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/views/ab$a;->a:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/sigmob/sdk/base/views/ab$a;->b:I

    const-string v1, "#4d000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/ab$a;->c:I

    const/16 v1, 0x12

    iput v1, p0, Lcom/sigmob/sdk/base/views/ab$a;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sigmob/sdk/base/views/ab$a;->e:I

    iput v1, p0, Lcom/sigmob/sdk/base/views/ab$a;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ab$a;->g:[I

    aput v1, v0, v1

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/views/ab$a;->a:I

    return-object p0
.end method

.method public a([I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ab$a;->g:[I

    return-object p0
.end method

.method public a()Lcom/sigmob/sdk/base/views/ab;
    .locals 9

    .line 3
    new-instance v0, Lcom/sigmob/sdk/base/views/ab;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ab$a;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ab$a;->g:[I

    iget v3, p0, Lcom/sigmob/sdk/base/views/ab$a;->b:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/ab$a;->c:I

    iget v5, p0, Lcom/sigmob/sdk/base/views/ab$a;->d:I

    iget v6, p0, Lcom/sigmob/sdk/base/views/ab$a;->e:I

    iget v7, p0, Lcom/sigmob/sdk/base/views/ab$a;->f:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/base/views/ab;-><init>(I[IIIIIILcom/sigmob/sdk/base/views/ab$1;)V

    return-object v0
.end method

.method public b(I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/base/views/ab$a;->b:I

    return-object p0
.end method

.method public c(I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/base/views/ab$a;->c:I

    return-object p0
.end method

.method public d(I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/base/views/ab$a;->d:I

    return-object p0
.end method

.method public e(I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/base/views/ab$a;->e:I

    return-object p0
.end method

.method public f(I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/base/views/ab$a;->f:I

    return-object p0
.end method

.method public g(I)Lcom/sigmob/sdk/base/views/ab$a;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ab$a;->g:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method
