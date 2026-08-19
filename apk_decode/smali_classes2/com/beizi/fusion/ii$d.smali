.class public abstract Lcom/beizi/fusion/ii$d;
.super Lcom/beizi/fusion/d6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field final synthetic e:Lcom/beizi/fusion/ii;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/ii;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/ii$d;->e:Lcom/beizi/fusion/ii;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/fusion/d6$b;-><init>(Lcom/beizi/fusion/d6;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/beizi/fusion/ii$d;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/ii$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/ii$d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/ii$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/ii$d;->b:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/ii$d;->d:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "PRIMARY"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
