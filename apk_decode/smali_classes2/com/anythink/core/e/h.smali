.class public Lcom/anythink/core/e/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "h"


# instance fields
.field private b:J

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/i/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/anythink/core/e/h;->b:J

    .line 9
    .line 10
    const-wide/32 v0, 0x5265c00

    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcom/anythink/core/e/h;->c:J

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/anythink/core/e/h;->d:Ljava/util/List;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/anythink/core/e/h;->e:I

    .line 24
    .line 25
    const-wide/32 v0, 0x1b77400

    .line 26
    .line 27
    .line 28
    iput-wide v0, p0, Lcom/anythink/core/e/h;->f:J

    .line 29
    .line 30
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/i/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/core/e/h;->d:Ljava/util/List;

    return-object v0
.end method

.method private a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/anythink/core/e/h;->b:J

    return-void
.end method

.method private b()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/anythink/core/e/h;->b:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/anythink/core/e/h;->c:J

    .line 8
    .line 9
    add-long/2addr v2, v4

    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method private c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/core/e/h;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/anythink/core/e/h;->e:I

    .line 2
    .line 3
    return v0
.end method

.method private e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/core/e/h;->f:J

    .line 2
    .line 3
    return-wide v0
.end method
