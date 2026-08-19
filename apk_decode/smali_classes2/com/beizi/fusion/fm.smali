.class public final enum Lcom/beizi/fusion/fm;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/beizi/fusion/fm;

.field public static final enum c:Lcom/beizi/fusion/fm;

.field public static final enum d:Lcom/beizi/fusion/fm;

.field public static final enum e:Lcom/beizi/fusion/fm;

.field public static final enum f:Lcom/beizi/fusion/fm;

.field private static final synthetic g:[Lcom/beizi/fusion/fm;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/beizi/fusion/fm;

    .line 2
    .line 3
    const-string v1, "POST"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/beizi/fusion/fm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/beizi/fusion/fm;->b:Lcom/beizi/fusion/fm;

    .line 10
    .line 11
    new-instance v0, Lcom/beizi/fusion/fm;

    .line 12
    .line 13
    const-string v1, "GET"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Lcom/beizi/fusion/fm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/beizi/fusion/fm;->c:Lcom/beizi/fusion/fm;

    .line 20
    .line 21
    new-instance v0, Lcom/beizi/fusion/fm;

    .line 22
    .line 23
    const-string v1, "DOWNLOAD"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v1}, Lcom/beizi/fusion/fm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/beizi/fusion/fm;->d:Lcom/beizi/fusion/fm;

    .line 30
    .line 31
    new-instance v0, Lcom/beizi/fusion/fm;

    .line 32
    .line 33
    const-string v1, "STREAM"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v1}, Lcom/beizi/fusion/fm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/beizi/fusion/fm;->e:Lcom/beizi/fusion/fm;

    .line 40
    .line 41
    new-instance v0, Lcom/beizi/fusion/fm;

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    const-string v2, "CACHE"

    .line 45
    .line 46
    const-string v3, "CACHE_IMAGE"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2}, Lcom/beizi/fusion/fm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/beizi/fusion/fm;->f:Lcom/beizi/fusion/fm;

    .line 52
    .line 53
    invoke-static {}, Lcom/beizi/fusion/fm;->a()[Lcom/beizi/fusion/fm;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/beizi/fusion/fm;->g:[Lcom/beizi/fusion/fm;

    .line 58
    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/beizi/fusion/fm;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic a()[Lcom/beizi/fusion/fm;
    .locals 5

    .line 1
    sget-object v0, Lcom/beizi/fusion/fm;->b:Lcom/beizi/fusion/fm;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/fm;->c:Lcom/beizi/fusion/fm;

    .line 4
    .line 5
    sget-object v2, Lcom/beizi/fusion/fm;->d:Lcom/beizi/fusion/fm;

    .line 6
    .line 7
    sget-object v3, Lcom/beizi/fusion/fm;->e:Lcom/beizi/fusion/fm;

    .line 8
    .line 9
    sget-object v4, Lcom/beizi/fusion/fm;->f:Lcom/beizi/fusion/fm;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/beizi/fusion/fm;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beizi/fusion/fm;
    .locals 1

    .line 1
    const-class v0, Lcom/beizi/fusion/fm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/beizi/fusion/fm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/beizi/fusion/fm;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/fm;->g:[Lcom/beizi/fusion/fm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/beizi/fusion/fm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/beizi/fusion/fm;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/fm;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
