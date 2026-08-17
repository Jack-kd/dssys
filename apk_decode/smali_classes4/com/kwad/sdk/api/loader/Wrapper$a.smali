.class final Lcom/kwad/sdk/api/loader/Wrapper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aDW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private aDX:I

.field private aDY:[Ljava/lang/StackTraceElement;

.field private aDZ:I

.field private aEa:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDW:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDX:I

    .line 4
    iput-object v1, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDY:[Ljava/lang/StackTraceElement;

    .line 5
    iput v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDZ:I

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/kwad/sdk/api/loader/Wrapper$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/sdk/api/loader/Wrapper$a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aEa:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/kwad/sdk/api/loader/Wrapper$a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDW:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/sdk/api/loader/Wrapper$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDW:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/sdk/api/loader/Wrapper$a;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDY:[Ljava/lang/StackTraceElement;

    return-object p1
.end method

.method public static synthetic b(Lcom/kwad/sdk/api/loader/Wrapper$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aEa:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic c(Lcom/kwad/sdk/api/loader/Wrapper$a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDX:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDX:I

    .line 6
    .line 7
    return v0
.end method

.method private clear()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDW:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDX:I

    .line 11
    .line 12
    iput-object v1, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDY:[Ljava/lang/StackTraceElement;

    .line 13
    .line 14
    iput v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDZ:I

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aEa:J

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic d(Lcom/kwad/sdk/api/loader/Wrapper$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDX:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/kwad/sdk/api/loader/Wrapper$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/api/loader/Wrapper$a;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/kwad/sdk/api/loader/Wrapper$a;)[Ljava/lang/StackTraceElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDY:[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/sdk/api/loader/Wrapper$a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDZ:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDZ:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic h(Lcom/kwad/sdk/api/loader/Wrapper$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/sdk/api/loader/Wrapper$a;->aDZ:I

    .line 2
    .line 3
    return p0
.end method
