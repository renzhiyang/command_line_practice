#!/usr/bin/zsh

helpFunction(){
    echo "Please input all parameters"
    echo "Usage: $0 -ont_aln_fn ont_aln -hifi_aln_fn hifi_aln -draft_fn draft"
    echo -e "\t--ont_aln_fn Alignment .bam file of Oxford Nanopore reads to draft assembly"
    echo -e "\t--hifi_aln_fn Alignment .bam file of PacBio HiFi reads to draft assembly"
    echo -e "\t--raft_fn Draft assembly .fasta file"
    exit 1 #exit script after running help 
}

ARGUMENT_LIST = (
    #"ont_aln_f"
    #"hifi_aln_f"
    #"draft_f"
    "ont"
    "hifi"
    "draft"
)
echo "$(printf "%s:," "${ARGUMENT_LIST[@]}")"
# read arguments
opts=$(getopt \
  --longoptions "$(printf "%s:," "${ARGUMENT_LIST[@]}")" \
  --name "$(basename "$0")" \
  --options "" \
  -- "$@"
)

eval set --$opts

while [[ $# -gt 0 ]]; do
    case "$1" in
        #--ont_aln_f ) ONT_ALN_F = $2 ;;
        #--hifi_aln_f ) HIFI_ALN_F = $2 ;;
        #--draft_f ) DRAFT_F = $2 ;; 
        --ont ) ONT_ALN_F=$2;;
        --hifi ) HIFI_ALN_F=$2;;
        --draft ) DRAFT=$2;;
        * ) helpFunction ;;
    esac
done

echo "$ONT_ALN_F"
echo "$HIFI_ALN_F"
echo "$DRAFT_F"