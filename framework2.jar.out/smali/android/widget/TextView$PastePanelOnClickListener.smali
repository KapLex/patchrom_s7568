.class Landroid/widget/TextView$PastePanelOnClickListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePanelOnClickListener"
.end annotation


# instance fields
.field private mController:Landroid/widget/MiuiCursorController;

.field private mMax:I

.field private mMin:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/MiuiCursorController;II)V
    .locals 0
    .parameter
    .parameter "cc"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 11616
    iput-object p1, p0, Landroid/widget/TextView$PastePanelOnClickListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11617
    iput-object p2, p0, Landroid/widget/TextView$PastePanelOnClickListener;->mController:Landroid/widget/MiuiCursorController;

    .line 11618
    iput p3, p0, Landroid/widget/TextView$PastePanelOnClickListener;->mMin:I

    .line 11619
    iput p4, p0, Landroid/widget/TextView$PastePanelOnClickListener;->mMax:I

    .line 11620
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 11623
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 11624
    .local v0, t:Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/TextView$PastePanelOnClickListener;->this$0:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/TextView$PastePanelOnClickListener;->mMin:I

    iget v3, p0, Landroid/widget/TextView$PastePanelOnClickListener;->mMax:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 11625
    iget-object v1, p0, Landroid/widget/TextView$PastePanelOnClickListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 11626
    iget-object v1, p0, Landroid/widget/TextView$PastePanelOnClickListener;->mController:Landroid/widget/MiuiCursorController;

    check-cast v1, Landroid/widget/MiuiCursorController$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->onClipBoardPancelClick()V

    .line 11627
    return-void
.end method
