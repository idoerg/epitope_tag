% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_protein_db.R
\name{make_protein_db}
\alias{make_protein_db}
\title{make_protein_db}
\usage{
make_protein_db(gz_file)
}
\arguments{
\item{gz_file}{A character vector specifying the input gzipped file to be used for creating the database.}
}
\description{
Decompresses the input gzipped file and creates a protein BLASTable database using makeblastdb.
}
\examples{
# Create a protein BLASTable database from the compressed FASTA file
#make_protein_db("Bos_taurus.ARS-UCD1.2.pep.all.fa.gz")

}
