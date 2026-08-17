.class abstract Lcom/beizi/fusion/fn$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/fn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/beizi/fusion/fn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/beizi/fusion/fn;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/beizi/fusion/fn;-><init>(Lcom/beizi/fusion/fn$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/beizi/fusion/fn$b;->a:Lcom/beizi/fusion/fn;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/beizi/fusion/fn;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/fn$b;->a:Lcom/beizi/fusion/fn;

    .line 2
    .line 3
    return-object v0
.end method
