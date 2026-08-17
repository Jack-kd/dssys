.class abstract Lcom/beizi/fusion/ip$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/ip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/beizi/fusion/ip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/ip;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/beizi/fusion/ip;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/beizi/fusion/ip$a;->a:Lcom/beizi/fusion/ip;

    .line 7
    .line 8
    return-void
.end method
