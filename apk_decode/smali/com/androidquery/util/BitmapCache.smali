.class public Lcom/androidquery/util/BitmapCache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxCount:I

.field private maxPixels:I

.field private maxTotalPixels:I

.field private pixels:I


# direct methods
.method public constructor <init>(III)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    .line 10
    .line 11
    iput p2, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    .line 12
    .line 13
    iput p3, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    .line 14
    .line 15
    return-void
.end method

.method private pixels(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int/2addr v0, p1

    .line 14
    return v0
.end method

.method private shrink()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 2
    .line 3
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    .line 4
    .line 5
    if-le v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 28
    .line 29
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    .line 30
    .line 31
    if-gt v1, v2, :cond_0

    .line 32
    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 6
    .line 7
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    invoke-direct {p0, p2}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    if-gt v0, v1, :cond_1

    .line 4
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 5
    invoke-super {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 6
    iget p2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-direct {p0, p1}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-direct {p0, p1}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    :cond_0
    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 2
    .line 3
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    .line 12
    .line 13
    if-le v0, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/util/BitmapCache;->shrink()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1
.end method
