.class Lcom/beizi/fusion/gn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ie$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/gn;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/gn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/gn$b;->a:Lcom/beizi/fusion/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/gn;Lcom/beizi/fusion/gn$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/gn$b;-><init>(Lcom/beizi/fusion/gn;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/cb;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/beizi/fusion/cb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gn$b;->a:Lcom/beizi/fusion/gn;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/fusion/gn;->a(Lcom/beizi/fusion/gn;Lcom/beizi/fusion/cb;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
