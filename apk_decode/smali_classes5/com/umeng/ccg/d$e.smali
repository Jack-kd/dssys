.class Lcom/umeng/ccg/d$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/ccg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field private static final a:Lcom/umeng/ccg/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/ccg/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/umeng/ccg/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/ccg/d$e;->a:Lcom/umeng/ccg/d;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/umeng/ccg/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/ccg/d$e;->a:Lcom/umeng/ccg/d;

    .line 2
    .line 3
    return-object v0
.end method
