# Author: Preston Lee

module YouAndMe

	# Tool for loading raw data files from 23andme into native Ruby structures
	class RawDataFileLoader

		# Returns Markdown-formatted URLs for the given SNP hash.
		def markdown_links(snp)
		  s = ""
		  if(!(snp[:rsid][0] == 'i'))  #how to break a string across rows?
			  s = "[dbSNP](http://www.ncbi.nlm.nih.gov/projects/SNP/snp_ref.cgi?rs=#{snp[:rsid]}) " +
			      " [HapMap](http://hapmap.ncbi.nlm.nih.gov/cgi-perl/gbrowse/hapmap27_B36/?name=SNP%3A#{snp[:rsid]})" +
			      " [NextBio](http://www.nextbio.com/b/search/details/#{snp[:rsid]}?type=snp&q0=#{snp[:rsid]}&t0=snp#tab=populations)" +
			      " [Ensembl](http://uswest.ensembl.org/Homo_sapiens/Variation/Summary?v=#{snp[:rsid]};vdb=variation)"
		  end
		  s
		end

		# Returns true if and only if the given file exists and is readable.
		def check_file(file_name)
			valid = false
			if(file_name != nil && File.file?(file_name) && File.readable?(file_name))
				valid = true
			end
			valid
		end

		# Reads the given raw 23andme data file, parses the data, and shoves it into a native Ruby data structure.
		# The returned data is an +Array+ full of +Hash+es, where each hash has key/value pairs for the columns in the data file.
		def load_file(file_name, max = 0)
			snps = []
			# Manually spliting seems to be faster than the built-in CSV parser for
			rows = File.read(file_name).split("\n")
			rows.each do |n|
				row = n.chomp.split("\t")
			# CSV.foreach(file_name, :col_sep => "\t") do |row|
				# Skip if the the line is a comment
				next if row[0][0] == '#'
				break if max > 0 && snps.length >= max
				snp = {
					:rsid => row[0],
					:chromosome => row[1],
					:position => row[2],
					:genotype => row[3]
				} 
				if snp[:genotype].match(/[A-Z]/) == nil
				    snp[:genotype] = '-'
			    end
				# y snp
				snps << snp
			end
			snps
		end

	end

end
