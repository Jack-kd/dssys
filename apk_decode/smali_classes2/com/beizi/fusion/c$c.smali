.class abstract Lcom/beizi/fusion/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static a:Lcom/beizi/fusion/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/beizi/fusion/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/beizi/fusion/c;-><init>(Lcom/beizi/fusion/c$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/beizi/fusion/c$c;->a:Lcom/beizi/fusion/c;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/beizi/fusion/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/c$c;->a:Lcom/beizi/fusion/c;

    .line 2
    .line 3
    return-object v0
.end method
