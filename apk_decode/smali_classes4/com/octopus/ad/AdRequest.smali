.class public final Lcom/octopus/ad/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/octopus/ad/internal/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/b/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/octopus/ad/AdRequest;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method private constructor <init>(Lcom/octopus/ad/AdRequest$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/octopus/ad/AdRequest$Builder;->access$000(Lcom/octopus/ad/AdRequest$Builder;)Lcom/octopus/ad/internal/b/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/AdRequest;->b:Lcom/octopus/ad/internal/b/a$a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/AdRequest$Builder;Lcom/octopus/ad/AdRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/octopus/ad/AdRequest;-><init>(Lcom/octopus/ad/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/octopus/ad/internal/b/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/AdRequest;->b:Lcom/octopus/ad/internal/b/a$a;

    .line 2
    .line 3
    return-object v0
.end method
